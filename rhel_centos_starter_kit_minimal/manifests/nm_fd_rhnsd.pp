class rhel_centos_starter_kit_minimal::nm_fd_rhnsd(
  $disable_nm = "yes",
  $disable_firwalld = "yes",
  $disable_rhnsd = "yes",
)
{
  if ( $disable_nm == "yes" ) {    
      exec {'disable_nm_controlled':
      command => "echo NM_CONTROLLED=false >>/etc/sysconfig/network-scripts/ifcfg-*"
           }
      exec {'mask_nm':
          command => "systemctl mask NetworkManager"
            }
   }
}