require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_host',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      app_base: {
        desc:    ' Specifies the Application Base directory for the virtual host. Maps to the [appBase XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/host.html#Common_Attributes). Valid options: a string..',
      },
      host_name: {
        desc:    ' Specifies the network name of the virtual host, as registered on your DNS server. Maps to the [name XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/host.html#Common_Attributes). Valid options: a string..',
      },
      parent_service: {
        type:    'String',
        desc:    ' Specifies which Service element the Host should nest under. Valid options: a string containing the name attribute of the Service..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any further attributes to add to the Host. Valid options: a hash of '< attribute >' => '< value >' pairs..',
      },
      attributes_to_remove: {
        type:    'Array',
        desc:    ' Specifies an array of attributes to remove from the element. Valid options: an array of strings..',
      },
      _catalina_base: {
        default: 'pick',
      },
    },
  )
