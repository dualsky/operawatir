module OperaWatir
  class QuickMenu < QuickWidget #??

    # @private
    # Checks the type of the widget is correct
    #def correct_type?
    #  @element.getType == WIDGET_ENUM_MAP[:menu]
    #end
    
    # @private
    # window_id is set if constructor is called on a (parent) window
    # location is set is this is called on a (parent) widget
    def initialize(container, method, selector=nil, location=nil)
      
      puts "QuickMenu initialize method #{method}, selector #{selector}"
      
      @container = container
                            
      if method.is_a? Java::ComOperaCoreSystems::QuickMenu
        @elm = method
      else
        @method    = method
        @selector  = selector
        @location  = location
      end
    end
    
    def name
      element.getName
    end
    
    ######################################################################
    # Checks whether a widget exists or not
    #
    # @return [Boolean] true if the widget exists otherwise false
    #
    def exist?
      !!element
      rescue Exceptions::UnknownObjectException
        false
    end
    alias_method :exists?, :exist?

private    
    # Finds the element on the page.  
    def find
      #If @method set and we do new find because of refresh, we need to get @selector first
      #Have the java object because the construct was done on it
      #if @selector == nil && @elm != nil
      #  set_selector
      #end
      #puts "\n<find> Find Menu by " + @method.to_s + ", " + @selector.to_s + ", " + @location.to_s
      case @method
      when :name
        @element = driver.getQuickMenu(@selector)#, @location)
      end
      raise(Exceptions::UnknownObjectException, "Element #{@selector} not found using #{@method}") unless @element 
      @element
    end


  end
end
