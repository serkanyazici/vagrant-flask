## VAGRANT FLASK APP

This git repo is focused on daily development usage and smoothness. It is not aimed for Production. Your environment will be provisioned by saltstack in order to deploy & develop Flask applications. You can just refresh your browser (localhost:8080 by default) to see the result of a code change straight away.

### REQUIREMENTS

Assuming you have up-to-date version of Vagrant and VirtualBox working properly on your workstation. (Always a good idea to check if virtualization settings are enabled on your BIOS)

### USAGE

Just clone this repository and execute the following command on root directory.

`vagrant up`

### TIPS

- If you want to use another port on your Host machine, you can change "HOST_PORT_FWD" variable on top of the Vagrantfile.
- You can also use a different "PYTHON_FILE" name rather than 'hello.py', just make sure it exists in /src folder.
- Check /home/vagrant/nohup.out file on Guest VM for further access logging if necessary.
