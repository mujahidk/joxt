class oracle {
	file {
		'/tmp/change_port.sql':
		ensure => file,
		content => epp('oracle/change_port.sql.epp', {}),
	}

	exec {
		'/u01/app/oracle/product/11.2.0/xe/bin/sqlplus system/vagrant@localhost @/tmp/change_port.sql':
		alias => 'change_port',
		require => File['/tmp/change_port.sql'],
	}
} 