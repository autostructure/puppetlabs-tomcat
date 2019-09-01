require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_install',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_home: {
        desc:    ' specifies the directory of the Tomcat installation from which the instance should be created. Valid options: a string containing an absolute path..',
      },
      install_from_source: {
        type:    'Boolean',
        desc:    ' Specifies whether to install from source or from a package. If set to `true` installation uses the `source_url`, `source_strip_first_dir`, `user`, `group`, `manage_user`, and `manage_group` parameters. If set to `false` installation uses the `package_ensure`, `package_name`, and `package_options` parameters. Valid options: Boolean. `true`..',
        default: 'true',
      },
      source_url: {
        desc:    ' In single-instance mode:  Specifies the source URL to install from. Valid options: a string containing a `puppet://`, `http(s)://`, or `ftp://` URL..',
      },
      source_strip_first_dir: {
        type:    'Boolean',
        desc:    ' Specifies whether to strip the topmost directory of the tarball when unpacking it. Only valid if `install_from_source` is set to `true`..',
        default: 'true',
      },
      proxy_type: {
        desc:    ' Specifies the proxy server type used by `proxy_server`. Normally this defaults to the protocol specified in the `proxy_server` URI. `proxy_server`. Valid options: 'none', 'http', 'https', 'ftp'..',
      },
      proxy_server: {
        desc:    ' Specifies a proxy server to use when downloading Tomcat binaries. For example, 'https://example.com:8080'..',
      },
      allow_insecure: {
        desc:    ' Specifies if HTTPS errors should be ignored when downloading the source tarball. Valid options: Boolean..',
        default: 'false',
      },
      user: {
        desc:    ' Specifies the owner of the source installation directory. `$::tomcat::user`..',
      },
      group: {
        desc:    ' Specifies the group of the source installation directory. `$::tomcat::group`..',
      },
      manage_user: {
        desc:    ' Specifies whether the user should be managed by this module or not. `$::tomcat::manage_user`..',
      },
      manage_group: {
        desc:    ' Specifies whether the group should be managed by this module or not. `$::tomcat::manage_group`..',
      },
      manage_home: {
        desc:    ' Specifies whether the directory of catalina_home should be managed by puppet. This may not be preferable in network filesystem environments..',
      },
      package_ensure: {
        desc:    ' Determines whether the specified package should be installed. Only valid if `install_from_source` is set to `false`. Maps to the `ensure` parameter of Puppet's native [package](https://docs.puppetlabs.com/references/latest/type.html#package)..',
      },
      package_name: {
        desc:    ' Specifies the package to install. Valid options: a string containing a valid package name..',
      },
      package_options: {
      },
      _user: {
        default: 'pick',
      },
    },
  )
