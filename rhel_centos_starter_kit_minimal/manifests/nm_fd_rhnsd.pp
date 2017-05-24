class rhel_centos_starter_kit_minimal::nm_fd_rhnsd(
  $disable_nm = 'yes',
  $disable_firwalld = 'yes',
  $disable_rhnsd = 'yes',
)
{
if($disable_nm == 'yes'){

     file { '/tmp/disable_nm.sh':
       ensure => file,
       source => 'puppet:///modules/rhel_centos_starter_kit_minimal/nm_disable.sh',
       mode   => 'u+x',
       before => Exec['disable_nm']
     }
     exec { 'disable_nm':
       command => '/tmp/disable_nm.sh',
       before  => Exec['restart_network_service']
     }
     exec { 'restart_network_service':
       command => '/usr/sbin/service network restart'
     }
     service { 'NetworkManager':
       enable => mask;
     }
   }
   if ($disable_firwalld == 'yes') {
     service { 'firewalld':
       enable => mask,
     }
   }
   if ($disable_rhnsd == 'yes') {
     service { 'rhnsd':
       enable => mask,
     }
   }
}