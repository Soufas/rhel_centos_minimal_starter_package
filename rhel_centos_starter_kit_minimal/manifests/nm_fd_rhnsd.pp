class rhel_centos_starter_kit_minimal::nm_fd_rhnsd(
  $disable_nm = "yes",
  $disable_firwalld = "yes",
  $disable_rhnsd = "yes",
)
{
  if ( $disable_nm == "yes" ) {    
     file_line { 'bashrc_proxy':
                  ensure => present,
                  path   => '/etc/bashrc',
                  line   => 'export HTTP_PROXY=http://squid.puppetlabs.vm:3128',
                  match  => '^export\ HTTP_PROXY\=',
                 }
    service {'restart_network_service':
            name => "network",
            ensure => ""
         }
   }
}