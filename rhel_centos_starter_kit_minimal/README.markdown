# rhel_centos_starter_kit_minimal #



# modulename

#### Table of Contents

1. [Description](#description)
2. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

This is a module for RHEL and CentOS minimal fresh installation used for production environments.

1- it add a new yum repository file which contains centos repo.
2- it installs the following packages necessary for every production server:
net-tools,vim-enhanced,nc,wireshark,tcpdump,wget,strace,lynx,sysstat,lsof,deltarpm,mlocate,bash-completion,nmap,telnet,lshw
3- it deactivates NetworkManager , the firewalld service and the rhnsd service
4- it makes Network interfaces unmanaged by NetowrkManager and restart the network service if any change is done 

## Setup

The module installs also a bash script /tmp/disable_nm.sh in order to disable NM_CONTROLLED option

## Usage

include rhel_centos_starter_kit_minimal
