# -*- mode: ruby -*-

$run_args = <<EOS.chomp
-it --privileged \
-v /lib/modules:/lib/modules:ro \
-v /usr/src:/usr/src:ro \
-v /etc/localtime:/etc/localtime:ro \
--workdir /usr/share/bcc/tools
EOS

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.define "bccdemo" do |cfg|
    cfg.vm.provision "docker" do |d|
      d.build_image "--tag=bccdemo /vagrant"
    end

    cfg.vm.provision "docker", run: "always" do |d|
      d.run "bccdemo",
            args: $run_args
    end
  end
end
