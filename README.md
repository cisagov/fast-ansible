Credit and thanks to iesplin ([https://github.com/iesplin](https://github.com/iesplin)) for ansible-role-burpsuite and to IppSec ([https://github.com/IppSec/parrot-build/](https://github.com/IppSec/parrot-build)) for the customize-browser role.

Install dependencies:
```
sudo apt update
sudo apt install ansible
```

Run the playbook locally:
```
ansible-playbook site.yaml --connection=local -i local_only_inventory.yaml -e ansible_python_interpreter=/usr/bin/python3
```

Run the playbook remotely (requires remote SSH access):
```
ansible-playbook site.yaml -i standard_inventory.yaml -e ansible_python_interpreter=/usr/bin/python3
```
