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
class rhel_centos_starter_kit_minimal {
include rhel_centos_starter_kit_minimal::packages
class { 'rhel_centos_starter_kit_minimal::nm_fd_rhnsd':
  disable_nm       => 'yes',
  disable_firwalld => 'yes',
  disable_rhnsd    => 'yes',
}
}