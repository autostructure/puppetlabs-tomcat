require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_realm',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation..',
      },
      class_name: {
        desc:    ' Specifies the Java class name of a Realm implementation to use. Maps to the [className XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/realm.html#Common_Attributes). Valid options: a string containing a Java class name. `name` passed in your defined type..',
      },
      parent_service: {
        desc:    ' Specifies which Service element this Realm element should nest under. Valid options: a string containing the name attribute of the Service..',
      },
      parent_engine: {
        desc:    ' Specifies which Engine element this Realm should nest under. Valid options: a string containing the name attribute of the Engine..',
      },
      parent_host: {
        desc:    ' Specifies which Host element this Realm should nest under. Valid options: a string containing the name attribute of the Host..',
      },
      parent_realm: {
        desc:    ' Specifies which Realm element this Realm should nest under. Valid options: a string containing the className attribute of the Realm element..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any further attributes to add to the Realm element. Valid options: a hash of '< attribute >' => '< value >' pairs..',
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
