require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_context_valve',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      resource_name: {
        type:    'if',
        desc:    ' The name of the Resource to be created, relative to the java:comp/env context. Default: `$name`.',
      },
      resource_type: {
        desc:    ' The fully qualified Java class name expected by the web application when it performs a lookup for this resource. Required to create the resource..',
      },
      catalina_base: {
        desc:    ' Specifies the root of the Tomcat installation. Default: `$tomcat::catalina_home`.',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any further attributes to add to the Valve. Valid options: a hash of '< attribute >' => '< value >' pairs. `{}`..',
      },
      attributes_to_remove: {
        type:    'Array',
      },
      _resource_name: {
      },
      base_path: {
      },
      ensure: {
        type:    'if',
        desc:    ' Specifies whether you are trying to add or remove the Valve element..',
      },
    },
  )
