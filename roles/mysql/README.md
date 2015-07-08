Mysql
=========

Installation of mysql

Requirements
------------

Requires Internet access for YUM. 
selinux has to be disabled on the machine

Role Variables
--------------

root_password variable if required for mysql_secure_installation
Either define in vars or define when executing ansible-playbook

Dependencies
------------

I guess a repository to download mysql. Either Epel or mysql repos will do just fine

Example Playbook
----------------

- name: Install mysql
  yum: name={{ item }} state=present
  with_items:
     - mysql
     - mysql-server
     - mysql-devel
     - mysql-libs
 ........ 


#ansible-playbook -i hosts slurm.yml --tags=mysql

License
-------

BSD

Author Information
------------------

Sakhile Masoka
Center For High Performance Computing
