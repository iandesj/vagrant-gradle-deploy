module Vagrant
    module GradleDeploy
        class Command < Vagrant.plugin('2', :command)
            def execute(*args)
                if args.include?("--no-test")
                    exec("vagrant ssh -c 'sudo su - root -c \"cd /var/lib/tomcat8/webapps && gradle clean build war -x test; gradle deploy\"'")
                else
                    exec("vagrant ssh -c 'sudo su - root -c \"cd /var/lib/tomcat8/webapps && gradle clean build war; gradle deploy\"'")
                end
                0
            end
        end
    end
end
