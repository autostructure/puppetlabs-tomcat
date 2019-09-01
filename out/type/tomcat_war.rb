require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_war',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation. Valid options: a string containing an absolute path. `$::tomcat::catalina_home`..',
      },
      app_base: {
        desc:    ' Specifies where to deploy the WAR. Cannot be used in combination with `deployment_path`. Valid options: a string containing a path relative to `$CATALINA_BASE`. `app_base`, Puppet deploys the WAR to your specified `deployment_path`. If you don't specify that either, the WAR deploys to `${catalina_base}/webapps`..',
      },
      deployment_path: {
        desc:    ' Specifies where to deploy the WAR. Cannot be used in combination with `app_base`. Valid options: a string containing an absolute path. `deployment_path`, Puppet deploys the WAR to your specified `app_base`. If you don't specify that either, the WAR deploys to `${catalina_base}/webapps`..',
      },
      war_name: {
        desc:    ' Specifies the name of the WAR. Valid options: a string containing a filename that ends in '.war'. `name` passed in your defined type..',
      },
      war_purge: {
        type:    'Boolean',
        desc:    ' Specifies whether to purge the exploded WAR directory. Only applicable when `war_ensure` is set to 'absent' or `false`..',
        default: 'true',
      },
      war_source: {
        desc:    ' Specifies the source to deploy the WAR from. Valid options: a string containing a `puppet://`, `http(s)://`, or `ftp://` URL..',
      },
      allow_insecure: {
        type:    'Boolean',
        desc:    ' Specifies if HTTPS errors should be ignored when downloading the war tarball..',
        default: 'false',
      },
      user: {
        desc:    ' The 'owner' of the tomcat war file..',
      },
      group: {
      },
      _catalina_base: {
        default: 'pick',
      },
    },
  )
