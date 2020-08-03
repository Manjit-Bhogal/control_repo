class minecraft {
  file {‘/opt/minecraft’:
    ensure => directory,
  }
#  file {‘/opt/minecraft/minecraft_server.1.12.2.jar’:
  file {‘/opt/minecraft/minecraft_server.jar’:
    ensure => file,
#    source      => 'https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar',
	 source      => 'https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar', 
 }
  package {‘java’:
    ensure => present,
  }
  file {‘/opt/minecraft/eula.txt’:
    ensure => file,
    content => ‘eula=true’
  }
  file {‘/etc/systemd/system/minecraft.service’:
    ensure => file,
    source => ‘puppet:///modules/minecraft/minecraft.service’,
  }
  service { ‘minecraft’:
    ensure => running,
    enable => true,
  }
}
}
