require 'fileutils'
require 'rubygems/package'
require 'open-uri'

Puppet::Type.type(:tomcat_application).provide(:linux) do
  commands :uncompress => 'jar'

  def initialize(value={})
    super(value)
  end

  def exists?
    Dir.exists?("#{resource[:catalina_base]}/webapps/#{resource[:application_name]}")
  end

  def destroy
    FileUtils.rm_r "#{resource[:catalina_base]}/webapps/#{resource[:application_name]}" if Dir.exist?("#{resource[:catalina_base]}/webapps/#{resource[:application_name]}")
  end

  def create
    destroy

    application_location = "#{resource[:catalina_base]}/webapps/#{resource[:application_name]}"
    war_location = "/tmp/#{resource[:application_name]}.war"

    FileUtils.mkdir_p application_location

    begin
      open(resource[:application_source], :redirect => false) do |f|
        File.open("#{war_location}", 'wb') do |file|
          file.puts f.read
        end
        break
      end

    rescue OpenURI::HTTPRedirect => http_redirect
      begin
        open(http_redirect.uri, redirect: true) do |f|
          File.open("#{war_location}", 'wb') do |file|
            file.puts f.read
          end
          break
        end
      end
    end

    # Unzip File
    Dir.chdir application_location do
      uncompress('xf', "/tmp/#{resource[:application_name]}.war")
    end

    File.delete("#{war_location}")

    FileUtils.chown_R resource[:user], resource[:group], application_location
  end
end
