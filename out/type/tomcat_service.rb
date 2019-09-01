require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_service',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_home: {
        desc:    ' Specifies the root directory of the Tomcat installation. Valid options: a string containing an absolute path..',
      },
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation. Valid options: a string containing an absolute path..',
      },
      use_jsvc: {
        type:    'Boolean',
        desc:    ' Specifies whether to use Jsvc for service management. If both `use_jsvc` and `use_init` are set to `false`, tomcat uses the following commands for service management.    .',
        default: 'false',
      },
      use_init: {
        type:    'Boolean',
        desc:    ' Specifies whether to use a package-provided init script for service management..',
        default: 'false',
      },
      java_home: {
        desc:    ' Specifies where Java is installed. Only applies if `use_jsvc` is set to `true`. Valid options: a string containing an absolute path..',
      },
      service_ensure: {
        desc:    ' Specifies whether the Tomcat service should be running. Maps to the `ensure` parameter of Puppet's native [service](https://docs.puppetlabs.com/references/latest/type.html#service). Valid options: 'running', 'stopped', `true`, `false`..',
        default: 'running',
      },
      service_name: {
        desc:    ' Specifies the name of the Tomcat service. Valid options: a string..',
      },
      start_command: {
        desc:    ' Designates a command to start the service. Valid options: a string. `use_init` and `use_jsvc`..',
      },
      stop_command: {
        desc:    ' Designates a command to stop the service. Valid options: a string. `use_init` and `use_jsvc`..',
      },
      status_command: {
        desc:    ' Designates a command to get the status of the service. Valid options: a string. `use_init` and `use_jsvc`..',
      },
      user: {
        desc:    ' The user of the jsvc process when `use_init => true`.',
      },
      wait_timeout: {
        type:    'Integer',
        default: '10',
      },
      _user: {
        default: 'pick',
      },
    },
  )
