require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_context_environment',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      environment_name: {
        type:    'String',
        desc:    ' The name of the Environment Entry to be created, relative to the `java:comp/env` context. `$name`..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any additional attributes to add to the Environment. Should be a hash of the format 'attribute' => 'value'..',
      },
      attributes_to_remove: {
        type:    'Array',
      },
      base_path: {
      },
      ensure: {
        type:    'if',
        desc:    ' Specifies whether you are trying to add or remove the Environment element Valid options: 'present', 'absent'..',
      },
    },
  )
