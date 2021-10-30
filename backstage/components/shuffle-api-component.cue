package backstage

component: "shuffle-api": {
	metadata: {
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
