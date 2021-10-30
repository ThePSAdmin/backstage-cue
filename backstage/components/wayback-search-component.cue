package backstage

component: "wayback-search": {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	metadata: {
		name:        "wayback-search"
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
