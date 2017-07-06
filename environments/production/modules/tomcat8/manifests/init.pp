class tomcat8{
	file { '/opt/tomcat':
		ensure => directory,
		owner => 'tomcat',
		group => 'tomcat',
		mode => '755',
	}
	# https://github.com/puppetlabs/puppetlabs-tomcat
	tomcat::install { '/opt/tomcat/tomcat8':
		source_url => 'http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz',
	}
	tomcat::instance { 'default':
	  catalina_home => '/opt/tomcat/tomcat8',
	}
}