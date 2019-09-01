Puppet::Type.newtype(:tomcat_application) do
  desc 'Installs the software into the given directory.'

  ensurable do
    defaultvalues
    defaultto :present
  end

  autorequire(:user) do
    self[:user]
  end

  autorequire(:group) do
    self[:group]
  end

  newparam(:catalina_base) do
    desc 'The directory of the Tomcat installation.'
  end

  newparam(:application_name, namevar: true) do
    desc 'Specifies the application name.'

    munge do |value|
      value.chomp('.war')
    end
  end

  newparam(:application_source) do
    desc 'Specifies the source to deploy the WAR from. A string containing a http(s):// URL.'

    validate do |value|
      raise ArgumentError, 'Application source is required.' if value !~ %r{https?:\/\/[\S]+}
    end
  end

  newparam(:user) do
    desc 'Specifies the owner of the source installation directory.'

    defaultto 'tomcat'
  end

  newparam(:group) do
    desc 'Specifies the group of the source installation directory.'

    defaultto 'tomcat'
  end

  validate do
    unless self[:catalina_base]
      raise(Puppet::Error, 'Catalina base is required.')
    end
    unless self[:application_name]
      raise(Puppet::Error, 'Application name is required.')
    end
    unless self[:application_source]
      raise(Puppet::Error, 'Application source is required.')
    end
  end
end
