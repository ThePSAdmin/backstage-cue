package backstage

component: "shuffle-api": {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	metadata: {
		name:        "shuffle-api"
		description: "Shuffle API"
		tags: [
			"go",
		]
	}
	spec: {
		type:      "service"
		lifecycle: "production"
		owner:     "user:guest"
		system:    "audio-playback"
	}
}
