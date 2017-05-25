# Class: rhel_centos_starter_kit_minimal
#
# This module install important packages and 
#make some configurations needed by for production RHEL
#and CentOS servers
#
# Parameters: none
#
# Actions:
#
# Requires: None
#
# Sample Usage: include rhel_centos_starter_kit_minimal
#
class rhel_centos_starter_kit_minimal (
  $packages_list = [net-tools,vim-enhanced,nc,wireshark,tcpdump,wget,strace,lynx,sysstat,lsof,deltarpm,mlocate,bash-completion,nmap,telnet,lshw],
  $disable_nm = 'yes',
  $disable_firwalld = 'yes',
  $disable_rhnsd = 'yes', 
){
class {'rhel_centos_starter_kit_minimal::packages':
  packages_list => $packages_list
}
class { 'rhel_centos_starter_kit_minimal::nm_fd_rhnsd':
  disable_nm       => $disable_nm,
  disable_firwalld => $disable_firwalld,
  disable_rhnsd    => $disable_rhnsd,
}
}