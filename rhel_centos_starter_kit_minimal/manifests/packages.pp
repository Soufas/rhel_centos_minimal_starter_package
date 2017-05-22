class packages {
  $packages = [net-tools,vim-enhanced,nc,wireshark,tcpdump,wget,strace,lynx,sysstat,lsof,deltarpm,mlocate,bash-completion,nmap,telnet,lshw]
  $repo_content="
[centos_repo]
name= cent_os repo
baseurl=http://mirror.centos.org/centos/7/os/x86_64/
enabled=1
gpgchek=0
"
  package {$packages: 
    ensure => installed,
  }
  file{ centos_repo:
    ensure => present,
    content => $repo_content,
  }
}