require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_instance_dependencies',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_home: {
      },
      catalina_base: {
      },
      home_sha: {
        default: 'sha1',
      },
    },
  )
