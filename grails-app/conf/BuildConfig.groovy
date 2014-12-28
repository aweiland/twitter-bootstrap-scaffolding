grails.servlet.version = "3.0"
grails.project.work.dir = "target"
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.7
grails.project.source.level = 1.7


grails.project.dependency.resolver = "maven" // or ivy

grails.project.dependency.resolution = {
    inherits "global"
    log "warn"
    checksums true

    repositories {
        inherits true
		
        grailsPlugins()
        grailsHome()
        grailsCentral()
        mavenLocal()
        mavenCentral()
		
		mavenRepo "http://snapshots.repository.codehaus.org"
		mavenRepo "http://repository.codehaus.org"
		mavenRepo "http://download.java.net/maven/2/"
		mavenRepo "http://repository.jboss.com/maven2/"
		mavenRepo "http://maven.springframework.org/milestone/"
		
    }

    dependencies {
		compile "org.jadira.usertype:usertype.jodatime:2.0.1"
    }

    plugins {
		compile ':asset-pipeline:1.9.4'
		compile ":scaffolding:2.1.2"
		
        compile ":hibernate4:4.3.5.4"
		compile ":joda-time:1.5"
        compile ":jquery:1.11.1"

		runtime ":twitter-bootstrap:3.2.1"
		runtime ":fields:1.3"
//		runtime ":cache-headers:1.1.5"
//		runtime ":cached-resources:1.0"
//		runtime ":zipped-resources:1.0"

        build ":tomcat:7.0.47"
    }
}
