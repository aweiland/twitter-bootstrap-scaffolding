package twitter.bootstrap.scaffolding

class AlertsTagLib {

	static namespace = "bootstrap"

	def alert = { attrs, body ->
		out << '<div class="alert ' << attrs.class.tokenize().join(" ") << '">'
		out << '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>'
		out << '<p>' << body() << '</p>'
		out << '</div>'
	}

}
