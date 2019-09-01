require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_engine',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      default_host: {
        desc:    ' Specifies a host to handle any requests directed to hostnames that exist on the server but are not defined in this configuration file. Maps to the [defaultHost XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/engine.html#Common_Attributes) of the Engine. Valid options: a string containing a hostname..',
      },
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation to manage. Valid options: a string containing an absolute path..',
      },
      background_processor_delay: {
        desc:    ' Determines the delay between invoking the backgroundProcess method on this engine and its child containers. Maps to the [backgroundProcessorDelay XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/engine.html#Common_Attributes). Valid options: an integer, in seconds. `undef`..',
      },
      class_name: {
        desc:    ' Specifies the Java class name of a server implementation to use. Maps to the [className XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/engine.html#Common_Attributes). Valid options: a string containing a Java class name..',
      },
      engine_name: {
        desc:    ' Specifies the logical name of the Engine, used in log and error messages. Maps to the [name XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/engine.html#Common_Attributes). Valid options: a string. `name` passed in your defined type..',
      },
      jvm_route: {
        desc:    ' Specifies an identifier to enable session affinity in load balancing. Maps to the [jvmRoute XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/engine.html#Common_Attributes). Valid options: string..',
      },
      parent_service: {
        desc:    ' Specifies which Service element the Engine should nest under. Valid options: a string containing the name attribute of the Service..',
      },
      start_stop_threads: {
        desc:    ' Sets how many threads the Engine should use to start child Host elements in parallel. Maps to the [startStopThreads XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/engine.html#Common_Attributes). Valid options: a string..',
      },
      server_config: {
      },
      _catalina_base: {
        default: 'pick',
      },
    },
  )
