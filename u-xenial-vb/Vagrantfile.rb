Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = true

  # Customize hostmanager plugin
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.vm.hostname = 'catalog.dev'
  config.vm.network :private_network, ip: '192.168.10.82'

  # Customize vm provider
  config.vm.provider :virtualbox do |vb|
    vb.memory = "4096"
  end
end
