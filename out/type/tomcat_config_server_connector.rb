require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_connector',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation to manage. Valid options: a string containing an absolute path..',
      },
      port: {
        desc:    ' Sets a TCP port on which to create a server socket. Maps to the [port XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/http.html#Common_Attributes). Valid options: a string..',
      },
      protocol: {
        desc:    ' Specifies a protocol to use for handling incoming traffic. Maps to the [protocol XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/http.html#Common_Attributes). Valid options: a string. `$name`..',
      },
      parent_service: {
        desc:    ' Specifies which Service element the Connector should nest under. Valid options: a string containing the name attribute of the Service..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any further attributes to add to the Connector. Valid options: a hash of '< attribute >' => '< value >' pairs..',
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
