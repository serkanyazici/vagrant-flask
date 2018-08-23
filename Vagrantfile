VAGRANTFILE_API_VERSION = "2"
HOST_PORT_FWD = "8080"
PYTHON_FILE = "hello.py"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_check_update = false
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

    config.vm.provision :shell, :inline => "/opt/my_app/flask-init.sh $1", :args => "#{PYTHON_FILE}", :privileged => false, run: 'always'
  end
