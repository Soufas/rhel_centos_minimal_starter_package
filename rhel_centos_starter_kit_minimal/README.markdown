# rhel_centos_starter_kit_minimal #


#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Usage](#usage)
4. [Limitations](#limitations)

## Overview

This is a module to configure RHEL and CentOS minimal fresh installations used in production environments.

## Module Description

* it adds a new yum repository file which contains centos repo.
* it installs necessary packages for critical production servers:
net-tools,vim-enhanced,nc,wireshark,tcpdump,wget,strace,lynx,sysstat,lsof,deltarpm,mlocate,bash-completion,nmap,telnet,lshw
* it deactivates NetworkManager , Firewalld service and RHNSD service
* it makes Network interfaces unmanaged by NetowrkManager and restart the network service if any change is done 


## Usage

### Install All

Minimal usage:

```puppet
include rhel_centos_starter_kit_minimal
}
```

Advanced usage example :

```puppet
class { rhel_centos_starter_kit_minimal:
  packages_list => [net-tools,vim-enhanced,nc,wireshark,tcpdump,wget,strace,lynx,sysstat,lsof,deltarpm,mlocate,bash-completion,nmap,telnet,lshw],
  disable_nm => 'yes',
  disable_firwalld => 'no',  # if not set , default yes
  disable_rhnsd => 'yes',    # if not set , default yes
}
```

Variables description used when declaring:

* packages_list     : packages that should be installed , if not set , default is like in the example
* disable_nm        : if set to yes , NM_CONTROLLED=false will be added to all network interface configuration , if it is already configured
                      no change will be made. If not set , default is yes
* disable_firwalld  : if set to yes , Firewalld service will disabled and masked. If not set , default is yes
* disable_rhnsd     : if set to yes , Rhnsd service will disabled and masked. If not set , default is yes
}


## Limitations

The Centos repo is added without checking if it already exists , condition will be added in futur releases