require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_context_resourcelink',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the root of the Tomcat installation. `$tomcat::catalina_home`..',
      },
      resourcelink_name: {
        desc:    ' The name of the ResourceLink to be created, relative to the `java:comp/env` context. `$name`..',
      },
      resourcelink_type: {
        desc:    ' The fully qualified Java class name expected by the web application when it performs a lookup for this resource link..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any additional attributes to add to the Valve. Should be a hash of the format 'attribute' => 'value'. Optional.',
      },
      attributes_to_remove: {
        type:    'Array',
      },
      base_path: {
      },
      ensure: {
        type:    'if',
        desc:    ' specifies whether you are trying to add or remove the ResourceLink element..',
      },
    },
  )
