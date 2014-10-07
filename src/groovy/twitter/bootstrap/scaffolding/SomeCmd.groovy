package twitter.bootstrap.scaffolding

@grails.validation.Validateable
class SomeCmd {
	
	enum Day {
		MONDAY,
		GRUESDAY,
		WEDDINGDAY,
		THORSDAY,
		FRIDAY,
		SATURNDAY,
		SUNDAY
	}

	String someText = ""
	
	Boolean someCheck = true
	
	Day someday = Day.MONDAY
}
