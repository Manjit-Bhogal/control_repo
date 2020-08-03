class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBl7wB7wisYCCFpBy+dpnOu9q16LpWAI4e8vw5kOZwQxtWBhf9t3qc8vuCsqI/pqB4B4w6/RS3A0J229pZcKvPVTolr/afmLWqbpluKfxJv1M+485owXqkpYmX8Mkr8dC3HTtb/hqLwW6O1BgOjU3/irDpM1xNfJ99Ult6UE0m/Iu73mLK7QrQ1tTfU2m4ya8P0/QS34JlOFEQuAZlkMOs0E1CAVl04JUA5jRUskTD9u1EUQnM5OniK5/S7pf87nHJN3MD2EPC8XFD3EbVymKuicCXRWsN62J8Ayo7X/M4vjYBsuDSqVdLWqToVhxIfhuKfa+PCZh++vjvYCLe2O/z',
	}  
}
