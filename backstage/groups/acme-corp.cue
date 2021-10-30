package backstage

group: "acme-corp": {
	metadata: {
		description: "The acme-corp organization"
		links: [
			{
				url:   "http://www.acme.com/"
				title: "Website"
			},
			{
				url:   "https://meta.wikimedia.org/wiki/"
				title: "Intranet"
			},
		]
	}
	spec: {
		type: "organization"
		children: [group.infrastructure]
	}
}
