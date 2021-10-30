package backstage

group: "acme-corp": {
	metadata: {
		description: "The acme-corp organization"
		links: [{
			url:   "http://www.acme.com/"
			title: "Website"
		}, {
			url:   "https://meta.wikimedia.org/wiki/"
			title: "Intranet"
		}]
	}
	spec: {
		type: "organization"
		profile: {
			displayName: "ACME Corp"
			email:       "info@example.com"
			picture:     "https://avatars.dicebear.com/api/identicon/info@example.com.svg?background=%23fff&margin=25"
		}
		children: ["infrastructure"]
	}
}
location: "example-groups": {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Location"
	metadata: {
		name:        "example-groups"
		description: "A collection of all Backstage example Groups"
	}
	spec: targets: [
		"./infrastructure-group.yaml",
		"./boxoffice-group.yaml",
		"./backstage-group.yaml",
		"./team-a-group.yaml",
		"./team-b-group.yaml",
		"./team-c-group.yaml",
		"./team-d-group.yaml",
	]
}
