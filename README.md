Credit and thanks to iesplin ([https://github.com/iesplin](https://github.com/iesplin)) for ansible-role-burpsuite and to IppSec ([https://github.com/IppSec/parrot-build/](https://github.com/IppSec/parrot-build)) for the customize-browser role.

Install dependencies:
```
sudo -c 'echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main" >> /etc/apt/sources.list.d/ansible.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt update
sudo apt install ansible

ansible-galaxy install -r requirements.yaml
```

Run the playbook locally:
```
ansible-playbook site.yaml --connection=local -i local_only_inventory.yaml -e ansible_python_interpreter=/usr/bin/python3
```

Run the playbook remotely (requires remote SSH access):
```
ansible-playbook site.yaml -i standard_inventory.yaml -e ansible_python_interpreter=/usr/bin/python3
```
