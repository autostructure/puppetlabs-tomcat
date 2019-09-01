require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_setenv_entry',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      value: {
        desc:    ' Provides the value(s) of the managed parameter. Valid options: a string or an array. If passing an array, separate values with a single space..',
      },
      ensure: {
        desc:    ' Determines whether the fragment should exist in the configuration file. Valid options: 'present', 'absent'..',
      },
      catalina_home: {
        desc:    ' Root of the Tomcat installation..',
      },
      config_file: {
        desc:    ' Specifies the configuration file to edit. Valid options: a string containing an absolute path..',
      },
      param: {
        desc:    ' Specifies a parameter to manage. Valid options: a string. `name` passed in your defined type..',
      },
      quote_char: {
        desc:    ' Specifies a character to include before and after the specified value. Valid options: a string (usually a single or double quote)..',
      },
      order: {
        desc:    ' Determines the ordering of your parameters in the configuration file (parameters with lower `order` values appear first.) Valid options: an integer or a string containing an integer. `10`..',
      },
      addto: {
        desc:    ' .',
      },
      doexport: {
        desc:    ' Specifies if you want to append export to the entry. Valid options: Boolean.',
        default: 'true',
      },
      user: {
        desc:    ' Specifies the owner of the config file. `$::tomcat::user`..',
      },
      group: {
      },
      _user: {
        default: 'pick',
      },
    },
  )
