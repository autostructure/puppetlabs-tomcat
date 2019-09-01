require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_valve',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation. Valid options: a string containing an absolute path. `$::tomcat::catalina_home`..',
      },
      class_name: {
        desc:    ' Specifies the Java class name of a server implementation to use. Maps to the [className XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/valve.html#Access_Logging/Attributes). Valid options: a string containing a Java class name..',
      },
      parent_host: {
        desc:    ' Specifies which virtual host the Valve should nest under. Valid options: a string containing the name of a Host element..',
      },
      parent_service: {
        desc:    ' Specifies which Service element the Valve should nest under. Valid options: a string containing the name of a Service element..',
      },
      parent_context: {
        desc:    ' Specifies which Context element the Valve should nest under. Valid options: a string containing the name of a Context element (matching the docbase attribute)..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any further attributes to add to the Valve. Valid options: a hash of '< attribute >' => '< value >' pairs..',
      },
      attributes_to_remove: {
        type:    'Array',
        desc:    ' Specifies an array of attributes to remove from the element. Valid options: an array of strings..',
      },
      server_config: {
      },
      _catalina_base: {
        default: 'pick',
      },
    },
  )
