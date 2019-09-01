require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_context_parameter',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      parameter_name: {
        type:    'String',
        desc:    ' The name of the Parameter entry to be created, relative to the `java:comp/env` context. `$name`..',
      },
      base_path: {
      },
      ensure: {
        type:    'if',
        desc:    ' Specifies whether you are trying to add or remove the Parameter element Valid options: 'present', 'absent'..',
      },
    },
  )
