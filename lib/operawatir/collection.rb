require 'forwardable'
require 'set'

class OperaWatir::Collection
  extend Forwardable
  include Enumerable

  attr_accessor :parent, :selector

  def initialize(parent, elms=nil)
    self.parent, self.selector = parent, OperaWatir::Selector.new(self)
    @_elms = elms
  end

  def add_selector_from_arguments(args)
    selector.attribute args.first
  end

  def exist?
    !raw_elements.empty?
  rescue OperaWatir::Exceptions::UnknownObjectException
    false
  end
  alias_method :exists?, :exist? # LOL Ruby

  def single?
    raw_elements.length == 1
  end

  def_delegators :raw_elements, :each,
                                :length,
                                :size,
                                :[],
                                :first,
                                :last,
                                :empty?

  # Set union, used for joining complex finders (specifically for Watir1)
  def +(other)
    self.class.new(parent, raw_elements + other.raw_elements)
  end

  # Public interface to elms, used in Selector
  def raw_elements
    _elms.tap do |e|
      raise(OperaWatir::Exceptions::UnknownObjectException) if e.empty?
    end
  end


  # Attributes

  def id
    map_or_return {|elm| elm.id}
  end

  def attr(name)
    raw_elements[0].attr(name)
  end

  def attrs(name)
    raw_elements.map do |el|
      el.attr(name)
    end
  end


  # Finding
  
  OperaWatir::Selector::BASE_TYPES.each do |type|
    define_method("find_by_#{type}") do |name|
      OperaWatir::Collection.new(self).tap do |c|
        c.selector.send(type, name)
      end
    end
  end
  
  alias_method :find_by_class, :find_by_class_name
  alias_method :find_by_tag,   :find_by_tag_name


  # No call to super. Collections are completely opaque proxies.
  # First we pass down to the elements
  #   If a method is found and it's all booleans, we .all? it
  #   otherwise we return an array of the results
  # If no method on the elements is found then we pass it to find_by_tag
  # NOTE this may cause some problems if people mis-spell things, as you can
  # call any method on a collection and it will always succeed
  def method_missing(method, *args, &blk)
    map_or_return {|elm| elm.send(method, *args, &blk) }
  end

private
  
  def _elms
    @_elms ||= selector.eval
  end

  attr_writer :_elms

  def map_or_return(&blk)
    single? ? blk.call(raw_elements.first) : map(&blk)
  end
  
  OperaWatir::Selector::BASE_TYPES.each do |type|
    define_method("find_elements_by_#{type}") do |value|
      _elms.inject([]) do |result, element|
        result | element.send("find_elements_by_#{type}", value.to_s)
      end
    end
  end
  
  def find_elements_by_attribute(attributes)
    _elms.select do |elm|
      attributes.all? {|attribute, value|
        elm.send(attribute).send((value.is_a?(Regexp) ? :match : :==), value)
      }
    end
  end
  
  def find_elements_by_index(index)
    if index >= 0 && index < _elms.length
      [_elms[index]]
    else
      []
    end
  end
  
end
