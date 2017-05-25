# rhel_centos_starter_kit_minimal #



# modulename

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with [modulename]](#setup)
3. [Usage - Configuration options and additional functionality](#usage)

## Description

This is a module for RHEL and CentOS minimal fresh installation used for production environments.

 * it adds a new yum repository file which contains centos repo.
 * it installs the following packages necessary for every production server:
net-tools,vim-enhanced,nc,wireshark,tcpdump,wget,strace,lynx,sysstat,lsof,deltarpm,mlocate,bash-completion,nmap,telnet,lshw
 * it deactivates NetworkManager , the firewalld service and the rhnsd service
 * it makes Network interfaces unmanaged by NetowrkManager and restart the network service if any change is done 

## Setup

The module installs also a bash script /tmp/disable_nm.sh in order to disable NM_CONTROLLED option

## Usage

include rhel_centos_starter_kit_minimal
