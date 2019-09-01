require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_context_manager',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the root of the Tomcat installation..',
      },
      manager_classname: {
        type:    'if',
        desc:    ' The name of the Manager to be created. `$name`..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any additional attributes to add to the Manager. Should be a hash of the format 'attribute' => 'value'. Optional.',
      },
      attributes_to_remove: {
        type:    'Array',
      },
      _manager_classname: {
      },
      base_path: {
      },
      ensure: {
        type:    'if',
        desc:    ' specifies whether you are trying to add or remove the Manager element..',
      },
    },
  )
