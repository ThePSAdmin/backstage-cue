package backstage

component: "wayback-search": {
	metadata: {
		description: "Search of the wayback machine"
	}
	spec: {
		type:      "service"
		lifecycle: "production"
		owner:     "team-a"
		providesApis: [
			"wayback-search",
		]
		consumesApis: ["wayback-archive"]
	}
}
