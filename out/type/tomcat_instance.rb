require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_instance',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_home: {
        desc:    ' Specifies the directory where the Apache Tomcat software is installed by a `tomcat::install` resource. Valid options: a string containing an absolute path..',
      },
      catalina_base: {
        desc:    ' Specifies the `$CATALINA_BASE` of the Tomcat instance where logs, configuration files, and the 'webapps' directory are managed. For single-instance installs, this is the same as the `catalina_home` parameter Valid options: a string containing an absolute path. `$catalina_home`..',
      },
      user: {
        desc:    ' Specifies the owner of the instance directories and files. `$::tomcat::user`..',
      },
      group: {
        desc:    ' Specifies the group of the instance directories and files. `$::tomcat::group`..',
      },
      manage_user: {
        desc:    ' Specifies whether the user should be managed by this module or not. `$::tomcat::manage_user`..',
      },
      manage_group: {
        desc:    ' Specifies whether the group should be managed by this module or not. `$::tomcat::manage_group`..',
      },
      manage_service: {
        desc:    ' Specifies whether a `tomcat::service` corresponding to this instance should be declared. Valid options: Boolean `true` (multi-instance installs), `false` ()single-instance installs)..',
      },
      manage_base: {
        desc:    ' Specifies whether the directory of catalina_base should be managed by Puppet. This might not be preferable in network filesystem environments. `true`..',
      },
      manage_properties: {
        desc:    ' Specifies whether the `catalina.properties` file is created and managed. If `true`, custom modifications to this file will be overwritten during runs Valid options: Boolean `true`..',
      },
      java_home: {
        desc:    ' Specifies the java home to be used when declaring a `tomcat::service` instance. See [tomcat::service](# tomcatservice).',
      },
      use_jsvc: {
        desc:    ' Specifies whether jsvc should be used when declaring a `tomcat::service` instance..',
      },
      use_init: {
        desc:    ' Specifies whether an init script should be managed when declaring a `tomcat::service` instance. See [tomcat::service](# tomcatservice).',
      },
      manage_dirs: {
        desc:    ' Determines whether subdirectories for `catalina_base` should be managed as part of tomcat::instance. The default directories are listed in `dir_list`. Valid options: Boolean..',
        default: 'true',
      },
      dir_list: {
        desc:    ' Specifies the subdirectories under `catalina_base` to be managed for an instance (disabled via `manage_dirs` Boolean). Valid options: an array of strings, each being a relative subdirectory to `catalina_base`. `['bin','conf','lib','logs','temp','webapps','work']`..',
      },
      dir_mode: {
        desc:    ' Specifies a mode for the managed subdirectories under `catalina_base` for an instance (as specified in `dir_list` and disabled via `manage_dirs` Boolean). Valid option: a string containing a standard Linux mode..',
      },
      manage_copy_from_home: {
        desc:    ' Specifies whether to copy the initial config files from `catalina_home` to `catalina_base`. Valid options: Boolean. `true`..',
        default: 'true',
      },
      copy_from_home_list: {
        desc:    ' Specifies the full path of config files to copy from `catalina_home` to `catalina_base` for an instance (disabled via `manage_copy_from_home` Boolean). Valid options: array of strings containing path + filename.       .',
      },
      copy_from_home_mode: {
        desc:    ' Specifies the file mode when copying the initial config files from `catalina_home` to `catalina_base`. Valid options: a string containing a standard Linux mode..',
      },
      install_from_source: {
        desc:    ' Specifies whether or not the instance should be installed from source..',
      },
      source_url: {
        desc:    ' URL to install from..',
      },
      source_strip_first_dir: {
        desc:    ' Whether or not to strip the first directory when unpacking the source tarball. Defaults to true when installing from source. Requires puppet/archive..',
      },
      package_ensure: {
        desc:    ' Ensure for the package resource when installing from package..',
      },
      package_name: {
        desc:    ' Name of package when installing from package..',
      },
      package_options: {
      },
      _catalina_home: {
        default: 'pick',
      },
    },
  )
