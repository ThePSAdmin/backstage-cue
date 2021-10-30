package backstage

component: "queue-proxy": {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	metadata: {
		name:        "queue-proxy"
		description: "Queue Proxy"
		tags: [
			"go",
			"website",
		]
	}
	spec: {
		type:      "website"
		lifecycle: "production"
		owner:     "team-b"
		system:    "podcast"
	}
}
