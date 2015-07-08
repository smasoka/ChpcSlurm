Mysql
=========

Installation of mysql<br/>
The following packages are installed mysql, mysql-server, mysql-devel and MySQL-python<br/>
MySQL-python is used ansible database module

Requirements
------------

Requires Internet access for YUM.<br/>
selinux has to be disabled on the machine

Role Variables
--------------


Dependencies
------------

I guess a repository to download mysql. Either Epel or mysql repos will do just fine

Example Playbook
----------------
```
- name: Install mysql
  yum: name={{ item }} state=present
  with_items:
     - mysql
     - mysql-server
     - mysql-devel
     - mysql-libs
 ........ 


#ansible-playbook -i hosts slurm.yml --tags=mysql
```
License
-------

BSD

Author Information
------------------

Sakhile Masoka<br/>
Center For High Performance Computing
