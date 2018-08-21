VAGRANTFILE_API_VERSION = "2"
HOST_PORT_FWD = "8080"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.host_name = 'flask'
    config.vm.network "forwarded_port", guest: 5000, host: HOST_PORT_FWD
    config.vm.synced_folder "saltstack/", "/srv/salt/"
    config.vm.synced_folder "src/", "/opt/my_app/"

    config.vm.provision :salt do |salt|
      salt.masterless = true
      salt.minion_config = "saltstack/minion"
      salt.install_type = "stable"
      salt.run_highstate = true
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end

    config.vm.provision :shell, :inline => "export FLASK_APP=/opt/my_app/hello.py && export FLASK_ENV=development && flask run --host=0.0.0.0", :privileged => false
  end