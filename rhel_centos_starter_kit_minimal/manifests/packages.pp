class packages {
  $packages = [net-tools,vim-enhanced,nc,wireshark,tcpdump,wget,strace,lynx,sysstat,lsof,deltarpm,mlocate,bash-completion,nmap,telnet,lshw]
  package {$packages: 
    ensure => installed,
  }
  file{ centos_repo:
  }
}