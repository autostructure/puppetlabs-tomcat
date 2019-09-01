require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_install_source',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_home: {
      },
      manage_home: {
      },
      source_url: {
      },
      source_strip_first_dir: {
        type:    'if',
      },
      group: {
      },
      allow_insecure: {
        default: 'false',
      },
      user: {
      },
      proxy_type: {
      },
      proxy_server: {
      },
      caller_module_name: {
        type:    'if',
      },
      _strip: {
        default: '0',
      },
      filename: {
        default: 'regsubst',
      },
    },
  )
