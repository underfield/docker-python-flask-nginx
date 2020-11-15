Vagrant.configure("2") do |config|
    config.vm.box = "bento/centos-7"
  
    # IP Address
    config.vm.network "private_network", ip: "192.168.33.20"
  
    # 共有ディレクトリ
    # config.vm.synced_folder "./app", "/var/www/", type: "virtualbox"
  
    # dockerインストール
    config.vm.provision :docker, run: "always"
    config.vm.provision :docker_compose
  
    # その他
    config.vm.provision "shell", path: './provision.sh'
  end
  