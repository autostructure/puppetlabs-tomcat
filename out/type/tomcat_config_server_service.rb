require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_service',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation. Valid options: a string containing an absolute path..',
      },
      class_name: {
        desc:    ' Specifies the Java class name of a server implementation to use. Maps to the [className XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/service.html#Common_Attributes). Valid options: a string containing a Java class name..',
      },
      server_config: {
      },
      _catalina_base: {
        default: 'pick',
      },
    },
  )
