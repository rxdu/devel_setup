# ansible_library

## Install ansible

```bash
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt-get install ansible
```

## Setup SSH Access

Configure the SSH key so that you can access the target computer without having to manually type in the password. You can find more information about the configuration [here](https://note.rdu.im/tech-notes/system/linux/ssh).

After finishing setting up the ssh key, check if ansible can access the target computer(s): 

```bash
$ ansible <group-name> -m ping
$ ansible <group-name> -a "shutdown now" -b
$ ansible <group-name> -a "reboot now" -b
```

## Createa a New Role

```bash
$ ansible-galaxy init <role-name>
```

## Execuate a Playbook

* Install a role from galaxy

```bash
$ cd <root-of-this-repo>
$ ansible-galaxy install -p ./roles geerlingguy.docker
```

* Execuate a playbook

```bash
$ ansible-playbook <playbook-name>
```

If you need to get sudo access, you can pass in "--ask-become-pass" argument:

```bash
$ ansible-playbook <playbook-name> --ask-become-pass
```
