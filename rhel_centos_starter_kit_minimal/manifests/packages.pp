class rhel_centos_starter_kit_minimal::packages {
  $packages_list = [net-tools,vim-enhanced,nc,wireshark,tcpdump,wget,strace,lynx,sysstat,lsof,deltarpm,mlocate,bash-completion,nmap,telnet,lshw]
  $repo_content='
[centos_repo]
name= cent_os repo
baseurl=http://mirror.centos.org/centos/7/os/x86_64/
enabled=1
gpgchek=0
'
package {$packages_list:
  ensure  => installed,
  require => File['/etc/yum.repos.d/centos_repo.repo']
}
file { '/etc/yum.repos.d/centos_repo.repo':
  ensure  => present,
  content => $repo_content,
}
}