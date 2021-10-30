package backstage

component: "artist-lookup": {
	metadata: {
		description: "Artist Lookup"
		tags: [
			"java",
			"data",
		]
		links: [{
			url:   "https://example.com/user"
			title: "Examples Users"
			icon:  "user"
		}, {
			url:   "https://example.com/group"
			title: "Example Group"
			icon:  "group"
		}, {
			url:   "https://example.com/cloud"
			title: "Link with Cloud Icon"
			icon:  "cloud"
		}, {
			url:   "https://example.com/dashboard"
			title: "Dashboard"
			icon:  "dashboard"
		}, {
			url:   "https://example.com/help"
			title: "Support"
			icon:  "help"
		}, {
			url:   "https://example.com/web"
			title: "Website"
			icon:  "web"
		}, {
			url:   "https://example.com/alert"
			title: "Alerts"
			icon:  "alert"
		}]
	}
	spec: {
		type:      "service"
		lifecycle: "experimental"
		owner:     "team-a"
		system:    "artist-engagement-portal"
		dependsOn: ["resource:artists-db"]
	}
}
