# Class: rhel_centos_starter_kit_minimal
#
# This module manages rhel_centos_starter_kit_minimal
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class rhel_centos_starter_kit_minimal {
include rhel_centos_starter_kit_minimal::packages
class{'rhel_centos_starter_kit_minimal::nm_fd_rhnsd':
       disable_nm => 'yes',
}
}
