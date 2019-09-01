require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_instance_copy_from_home',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_home: {
      },
      user: {
      },
      group: {
      },
      mode: {
      },
      filename: {
        default: 'basename',
      },
    },
  )
