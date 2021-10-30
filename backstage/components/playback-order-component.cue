package backstage

component: "playback-order": {
	metadata: {
		description: "Playback Order"
		tags: [
			"java",
			"playback",
		]
	}
	spec: {
		type:      "service"
		lifecycle: "production"
		owner:     "user:guest"
		system:    "audio-playback"
	}
}
