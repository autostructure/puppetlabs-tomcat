require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_install_package',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      package_ensure: {
      },
      package_options: {
      },
      package_name: {
      },
      caller_module_name: {
        type:    'if',
      },
    },
  )
