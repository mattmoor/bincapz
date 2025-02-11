rule requests_urls : notable {
	meta:
		description = "requests resources via URL"
	strings:
		$ref = "NSMutableURLRequest"
		$ref2 = "import requests"
		$ref3 = "net/url"
		$ref4 = /requests\.get\([\w, =\)]{0,16}/
		$ref5 = "require('request');"
		$ref6 = "request(url, "
		$ref7 = "require('https').request"
		$ref8 = "http.request"
		$ref9 = "urllib2.urlopen"
		$ref10 = "urllib.request"
	condition:
		any of them
}
