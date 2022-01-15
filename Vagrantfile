Vagrant.configure("2") do |config|
 config.vm.provision "file", source: "./vagrant.rsa.pub", destination: "~/.ssh/authorized_keys"
 config.ssh.private_key_path = ["./vagrant.rsa", "~/.vagrant.d/insecure_private_key"]
 config.ssh.insert_key = false
 config.vm.synced_folder ".", "/vagrant", disabled: true
 config.vm.provider "virtualbox" do |vb|
   vb.gui = false
   vb.memory = "512"
   vb.cpus = 1
   vb.linked_clone = true
 end

 machine_id = 1
  config.vm.define "HW1-#{machine_id}" do |n|
   n.vm.hostname = "HW1-#{machine_id}"
   n.vm.network "private_network", ip: "192.168.56.211"
   n.vm.box = "centos/8"
#   n.vm.provision :ansible do |ansible|
#          ansible.limit = "all"
#          ansible.playbook = "playbook1.yaml"
#          ansible.raw_arguments = [ "-D"]
#     end
  end

 machine_id = 3
  config.vm.define "HW1-#{machine_id}" do |n|
   n.vm.hostname = "HW1-#{machine_id}"
   n.vm.network "private_network", ip: "192.168.56.213"
   n.vm.box = "ubuntu/focal64"
#      n.vm.provision :ansible do |ansible|
#          ansible.limit = "all"
#         ansible.playbook = "playbook1.yaml"
#          ansible.raw_arguments = [ "-D"]
#      end
  end
end
