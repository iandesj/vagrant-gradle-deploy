module Vagrant
    module GradleDeploy
        class Command < Vagrant.plugin('2', :command)
            def execute
                exec('sudo su - root -c \"cd /var/lib/tomcat8/webapps && gradle clean build war; gradle deploy\"')
                0
            end
        end
    end
end
