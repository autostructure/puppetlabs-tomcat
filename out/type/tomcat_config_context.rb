require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_context',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
      },
      _catalina_base: {
        default: 'pick',
      },
    },
  )
