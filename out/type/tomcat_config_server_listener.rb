require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_listener',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation. Valid options: a string containing an absolute path..',
      },
      class_name: {
        desc:    ' Specifies the Java class name of a server implementation to use. Maps to the [className XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/listeners.html#Common_Attributes) of a Listener Element. Valid options: a string containing a Java class name. `$name`..',
      },
      parent_service: {
        type:    'if',
        desc:    ' Specifies which Service element the Listener should nest under. Only valid if `parent_engine` or `parent_host` is specified. Valid options: a string containing the name attribute of the Service..',
      },
      parent_engine: {
        desc:    ' Specifies which Engine element this Listener should nest under. Valid options: a string containing the name attribute of the Engine..',
      },
      parent_host: {
        desc:    ' Specifies which Host element this Listener should nest under. Valid options: a string containing the name attribute of the Host..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any further attributes to add to the Listener. Valid options: a hash of '< attribute >' => '< value >' pairs..',
      },
      attributes_to_remove: {
        type:    'Array',
        desc:    ' Specifies an array of attributes to remove from the element. Valid options: an array of strings..',
      },
      server_config: {
      },
    },
  )
