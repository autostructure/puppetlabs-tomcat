require 'puppet/resource_api'

  Puppet::ResourceApi.register_type(
    name: 'tomcat_config_server_context',
    docs: <<-EOS,
        This type provides Puppet with the capabilities to manage ...
      EOS
    features: [],
    attributes: {
      catalina_base: {
        desc:    ' Specifies the base directory of the Tomcat installation to manage. Valid options: a string containing an absolute path..',
      },
      doc_base: {
        desc:    ' Specifies a Document Base (or Context Root) directory or archive file. Maps to the [docBase XML attribute](http://tomcat.apache.org/tomcat-8.0-doc/config/context.html#Common_Attributes). Valid options: a string containing a path (either an absolute path or a path relative to the appBase directory of the owning Host). `$name`..',
      },
      parent_service: {
        desc:    ' Specifies which Service XML element the Context should nest under. Valid options: a string containing the name attribute of the Service..',
      },
      parent_engine: {
        desc:    ' Specifies which Engine element the Context should nest under. Only valid if `parent_host` is specified. Valid options: a string containing the name attribute of the Engine..',
      },
      parent_host: {
        desc:    ' Specifies which Host element the Context should nest under. Valid options: a string containing the name attribute of the Host..',
      },
      additional_attributes: {
        type:    'Hash',
        desc:    ' Specifies any further attributes to add to the Context. Valid options: a hash of '< attribute >' => '< value >' pairs..',
      },
      attributes_to_remove: {
        type:    'Array',
        desc:    ' Specifies an array of attributes to remove from the element. Valid options: an array of strings..',
      },
      server_config: {
      },
      _catalina_base: {
        default: 'pick',
      },
    },
  )
