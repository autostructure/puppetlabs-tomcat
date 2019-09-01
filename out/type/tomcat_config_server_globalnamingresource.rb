require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_globalnamingresource',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        type:    'if',
        desc:    ' Specifies the base directory of the Tomcat instance. Valid options: a string containing an absolute path..',
      },
      resource_name: {
        type:    'if',
        desc:    ' Optionally override the globalnamingresource name that is normally taken from the Puppet resource's `$name`..',
      },
      type: {
        desc:    ' Specifies the type of element to create Valid options: `Resource`, `Environment` or any other valid node..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any further attributes to add to the Host. Valid options: a hash of '< attribute >' => '< value >' pairs..',
      },
      attributes_to_remove: {
        type:    'Array',
        desc:    ' Specifies an array of attributes to remove from the element. Valid options: an array of strings..',
      },
      server_config: {
        type:    'if',
      },
      _resource_name: {
      },
      base_path: {
      },
      _server_config: {
      },
      ensure: {
        type:    'if',
        desc:    ' Determines whether the specified XML element should exist in the configuration file..',
      },
    },
  )
