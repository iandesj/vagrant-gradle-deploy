require 'bundler'

begin
    require 'vagrant'
rescue LoadError
    Bundler.require(:default, :development)
end

require 'vagrant-gradle-deploy/plugin'
require 'vagrant-gradle-deploy/command'
