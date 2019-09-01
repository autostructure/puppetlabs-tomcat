require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_properties_property',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' The catalina base of the catalina.properties file. The resource will manage the values in `${catalina_base}/conf/catalina.properties` . Required.',
      },
      value: {
        desc:    ' The value of the property. Required.',
      },
      property: {
      },
    },
  )
