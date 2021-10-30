package backstage

component: "playback-sdk": {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	metadata: {
		name:        "playback-sdk"
		description: "Audio and video playback SDK"
	}
	spec: {
		type:      "library"
		lifecycle: "experimental"
		owner:     "team-c"
		system:    "audio-playback"
	}
}
