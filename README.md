Credit and thanks to iesplin ([https://github.com/iesplin/ansible-role-burpsuite](https://github.com/iesplin/ansible-role-burpsuite)) for ansible-role-burpsuite and to IppSec ([https://github.com/IppSec/parrot-build/](https://github.com/IppSec/parrot-build)) for the customize-browser role.

Use run.sh script:
```
./run.sh local
```
or
```
./run.sh remote
```

Otherwise, you can manually install ansible:
```
sudo apt update
sudo apt install ansible
```
And either run the playbook locally:
```
ansible-playbook site.yaml --connection=local -i local_only_inventory.yaml -e ansible_python_interpreter=/usr/bin/python3
```
or run the playbook remotely (requires remote SSH access):
```
ansible-playbook site.yaml -i standard_inventory.yaml -e ansible_python_interpreter=/usr/bin/python3
```
