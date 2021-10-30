package backstage

component: "queue-proxy": {
	metadata: {
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
