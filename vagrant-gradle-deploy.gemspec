require File.expand_path('../lib/vagrant-gradle-deploy/version', __FILE__)

Gem::Specification.new do |s|
    s.name              = 'vagrant-gradle-deploy'
    s.version           = Vagrant::GradleDeploy::VERSION
    s.date              = '2015-07-15'
    s.summary           = 'gradle deploy process remotely to vagrant box'
    s.description       = 'A vagrant plugin to build and deploy remotely on the vagrant box'
    s.authors           = 'iandesj'
    s.email             = 'ian.desjardins@rightbrainnetworks.com'
    s.files             = `git ls-files`.split($\)
    s.executables       = s.files.grep(%r{^bin/}).map{ |f| File.basename(f)  }
    s.require_paths     = ['lib']
    s.homepage          = 'https://github.com/iandesj/vagrant-gradle-deploy'
    s.license           = 'GNU'
end
