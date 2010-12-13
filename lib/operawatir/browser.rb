# -*- coding: utf-8 -*-
class OperaWatir::Browser

  attr_accessor :driver
  attr_accessor :active_window
  
  attr_accessor :options
  
  def initialize(options={})
    self.driver = OperaDriver.new(OperaDriverSettings.new.tap {|s|
      s.setRunOperaLauncherFromOperaDriver true
      s.setOperaLauncherBinary ENV['OPERA_LAUNCHER'] || options[:launcher] || ''
      s.setOperaBinaryLocation ENV['OPERA_PATH'] || options[:path] || ''
      s.setOperaBinaryArguments ENV['OPERA_ARGS'] || options[:args] || ''
    })

    self.active_window = OperaWatir::Window.new(self)
  end

  # Get the name of the browser currently being run.
  #
  # @return [String] name of browser currently used.
  def name
    'Opera'
  end

  def url=(url)
    active_window.url = url
    active_window
  end
  alias_method :url, :url=

  def exists?
    true
  end

  # Query to see if the browser instance is still connected.
  #
  # @return [Boolean] whether driver is still connected to browser
  #   instance.
  def connected?
    driver.isConnected
  end

  # Instruct the browser instance to quit and shut down.
  def quit!
    driver.quit
  end

  # TODO: This should be on Windows
  def close_all
    driver.closeAll
  end

  # Get the version number of the driver.  This _is not_ the same as
  # the version number for OperaWatir, which can be retrieved using
  # +OperaWatir.version+ instead.
  #
  # @seealso OperaWatir.version
  # @return [String] driver version.
  def version
    driver.getOperaDriverVersion
  end

  # Get process identifier for spawned Opera browser instance.  This
  # will only work if instance was started through OperaWatir.
  #
  # @return [Integer] the process ID of the browser instance.
  def pid
    driver.getPid
  end

  # Get the target device's platform.  This is not equivalent of the
  # platform the OperaWatir server might be running on.
  #
  # @return [String] operating system flavour.
  def platform
    driver.getPlatform
  end

  # Will fetch the build number for the attached browser instance.
  #
  # @return [Integer] build number of attached browser instance.
  def build
    driver.getBuild
  end

  # Get the full path to the attached browser binary.
  #
  # @return [String] path to the attached browser's binary.
  def path
    driver.getPath
  end

  # Fetches the user agent (UA) string the browser currently uses.
  #
  # @return [String] user agent string.
  def ua_string
    driver.getUaString
  end

  # Is attached browser instance of type internal build or public
  # desktop?
  #
  # @return [Boolean] true if browser attached is of type desktop,
  #                   false otherwise.
  def desktop?
    false
  end

  # Send key events to the browser instance.  I.e. “Down” (arrow
  # down), “Space” (space key), “Home”, &c.
  #
  # @param [String] key to be pressed once.
  def key(key)
    @driver.key(key)
  end

  # Enables you to hold down a key, i.e. “Ctrl”, “Alt”, “Shift”, &c.
  # Remember to release the keys afterwards with the key_up method.
  #
  # @param [String] key to be pressed down.
  def key_down(key)
    @driver.keyDown(key)
  end

  # Releases a held down key.
  #
  # @param [String] key to be lifted.
  def key_up(key)
    @driver.keyUp(key)
  end

  # Types given text directly in to the browser.  The text will be
  # inputted to the page depending on where the focus is.
  #
  # @param [String] text to be typed.
  def type(text)
    @driver.type(text)
  end

  # Full list of available Opera actions in the Opera build you're
  # using.  Note that this list varies from configuration to
  # configuration, and from build to build.  The Opera actions
  # available to devices-type builds will vary greatly from those
  # available to desktop-types.
  #
  # @return [String] list of available Opera actions.
  def opera_action_list
    @driver.getOperaActionList
  end

end
