package backstage

component: "www-artist": {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	metadata: {
		name:        "www-artist"
		description: "Artist main website"
	}
	spec: {
		type:      "website"
		lifecycle: "production"
		owner:     "team-a"
		system:    "artist-engagement-portal"
	}
}