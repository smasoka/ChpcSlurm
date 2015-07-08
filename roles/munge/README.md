Munge
=========

Munge installation
Creates munge user and group 
Creates munge key and sets permissions
Enables the service and starts it

Requirements
------------

Internet Access for YUM

Role Variables
--------------

No roles variables 

Dependencies
------------

No dependencies

Example Playbook
----------------

---
- name: Install munge
  yum: name={{ item }} state=present
  with_items:
     - munge
     - munge-devel
     - munge-libs
  .......

#ansible-playbook -i hosts slurm.yml --tags=munge

License
-------

BSD

Author Information
------------------

Sakhile Masoka
Center for High Performance Computing
