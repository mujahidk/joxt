class tomcat8config{
	file {
		'/opt/tomcat/tomcat8/bin/setenv.sh':
		ensure => file,
		recurse => true,
		owner => 'tomcat',
		group => 'tomcat',
		source => 'puppet:///modules/tomcat8config/bin/setenv.sh',
		mode => '0750',
		require => Class['Tomcat8']
	}
	file {
		'/opt/tomcat/tomcat8/conf':
		ensure => directory,
		recurse => true,
		owner => 'tomcat',
		group => 'tomcat',
		source => 'puppet:///modules/tomcat8config/conf',
		require => Class['Tomcat8']
	}
}