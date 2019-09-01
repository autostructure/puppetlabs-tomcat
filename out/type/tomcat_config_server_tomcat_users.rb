require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_tomcat_users',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation. Valid options: a string containing an absolute path..',
      },
      element_name: {
        desc:    ' Sets the element's username (or rolename, if `element` is set to 'role'). Valid options: a string. `$name`..',
      },
      file: {
        desc:    ' Specifies the configuration file to manage. Valid options: a string containing a fully-qualified path..',
      },
      manage_file: {
        type:    'Boolean',
        desc:    ' Specifies whether to create the specified configuration file if it doesn't exist. Uses Puppet's native [file](https://docs.puppetlabs.com/references/latest/type.html#file) with default parameters..',
        default: 'true',
      },
      owner: {
        desc:    ' Specifies the owner of the configuration file. `$::tomcat::user`..',
      },
      group: {
        desc:    ' Specifies the group of the configuration file. `$::tomcat::group`..',
      },
      password: {
        desc:    ' Specifies a password for user elements. Valid options: a string..',
      },
      roles: {
        type:    'Array',
      },
      _owner: {
        default: 'pick',
      },
    },
  )
