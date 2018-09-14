Vagrant.configure(2) do |config|

  #если юзаешь проксю, впиливай ниже, если нет - удали след 3 строчки
  # config.proxy.http     = " "
  # config.proxy.https    = " "
  # config.proxy.no_proxy = "localhost,127.0.0.1"

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.network "private_network", ip: "192.168.0.150"
 #   ubuntu.vm.network "forwarded_port", guest: 80, host: 8000
 #   ubuntu.vm.network "forwarded_port", guest: 8080, host: 8080
    ubuntu.vm.hostname = "ubuntu"
    #ubuntu.vm.provider :virtualbox do |vb|
       # vb.customize ["modifyvm", :id, "--memory", "3072"]
       # vb.customize ["modifyvm", :id, "--cpus", "2"]
       #vb.name = "ubuntu"
    #end
    ubuntu.vm.synced_folder "src/", "/src/"

    id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub")
    config.vm.provision "copy ssh public key", type: "shell",
      inline: "echo \"#{id_rsa_pub}\" >> /root/.ssh/authorized_keys"

#    ubuntu.vm.provision "shell", inline: <<-SHELL
#     curl -fsSL https://get.docker.com/ | sh
#     sudo systemctl start docker
#     sudo usermod -aG docker vagrant
#   SHELL
   # ubuntu.vm.provision "shell", path: "install.sh"
  end
end
