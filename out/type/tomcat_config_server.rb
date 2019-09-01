require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation to manage. Valid options: a string containing an absolute path..',
      },
      class_name: {
        desc:    ' Specifies the Java class name of a server implementation to use. Maps to the [className XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/server.html#Common_Attributes) in the configuration file. Valid options: a string containing a Java class name..',
      },
      address: {
        desc:    ' Specifies a TCP/IP address on which to listen for the shutdown command. Maps to the [address XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/server.html#Common_Attributes). Valid options: a string..',
      },
      port: {
        desc:    ' Specifies a port on which to listen for the designated shutdown command. Maps to the [port XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/server.html#Common_Attributes). Valid options: a string containing a port number..',
      },
      shutdown: {
        desc:    ' Designates a command that shuts down Tomcat when the command is received through the specified address and port. Maps to the [shutdown XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/server.html#Common_Attributes). Valid options: a string..',
      },
      server_config: {
      },
      _catalina_base: {
        default: 'pick',
      },
    },
  )
