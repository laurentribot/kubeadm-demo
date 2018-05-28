# -*- mode: ruby -*-
# vi: set ft=ruby :

servers = [
  { name: 'kubernetes-master', autostart: true, ip: '192.168.56.20' },
  { name: 'kubernetes-slave', autostart: true, ip: '192.168.56.21' }
]

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.ssh.username = 'vagrant'
  config.ssh.insert_key = true

  servers.each do |server|

    config.vm.define server[:name], autostart: server[:autostart] do |box|

      box.vm.hostname = "#{server[:name]}"
      box.vm.network "private_network", ip: "#{server[:ip]}", auto_config: false

      box.vm.synced_folder "../data", "/vagrant_data"

      box.vm.provision "file", source: "scripts/network/netplan-#{server[:name]}", destination: "/tmp/netplan"
      box.vm.provision "file", source: "scripts/network/hosts", destination: "/tmp/hosts"
      box.vm.provision "file", source: "scripts/network/sysctl.conf", destination: "/tmp/sysctl.conf"

      # Configuration de l'interface réseau private network
      box.vm.provision "shell", privileged: true, inline: "cat /tmp/netplan > /etc/netplan/50-cloud-init.yaml"

      # Ajout des VMs au fichier /etc/hosts
      box.vm.provision "shell", privileged: true, inline: "cat /tmp/hosts >> /etc/hosts"

      # Activation ssh par password
      box.vm.provision "shell", privileged: true, inline: "sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config"
      box.vm.provision "shell", privileged: true, inline: "systemctl restart sshd.service"

      # Désactivation ipv6
      box.vm.provision "shell", privileged: true, inline: "cat /tmp/sysctl.conf > /etc/sysctl.d/99-sysctl.conf && sysctl -p"
      box.vm.provision "shell", privileged: true, inline: "netplan apply"
      box.vm.provision "shell", privileged: true, inline: "sed 's/preserve_hostname: false/preserve_hostname: true/' -i /etc/cloud/cloud.cfg"

      box.vm.provision "file", source: "scripts/apt/config-apt.sh", destination: "/tmp/config-apt.sh"
      box.vm.provision "shell", privileged: true, inline: "bash /tmp/config-apt.sh"

      box.vm.provision "shell", privileged: true, inline: "apt-get update -q && DEBIAN_FRONTEND=noninteractive apt-get install docker.io kubeadm  -q -y"
      box.vm.provision "shell", privileged: true, inline: "swapoff -a"


      if "#{server[:name]}" == 'kubernetes-master'

        box.vm.provision "shell", privileged: true, inline: "kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address 192.168.56.20"

      end


      box.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = "2"
        vb.name = "#{server[:name]}"
      end

    end

  end

end
