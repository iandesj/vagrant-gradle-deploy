module Vagrant
    module GradleDeploy
        class Plugin < Vagrant.plugin('2')
            name "Gradle Build and Deploy"

            description <<-DESC
            This plugin 'gradle-deploy' will build and deploy the gradle project on the remote machine
            DESC

            command 'gradle-deploy' do
                require_relative 'command'
                Command
            end
        end
    end
end
