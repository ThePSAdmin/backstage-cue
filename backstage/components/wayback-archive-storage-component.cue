package backstage

component: "wayback-archive-storage": {
	metadata: {
		description: "Storage subsystem of the Wayback Archive"
	}
	spec: {
		type:           "service"
		lifecycle:      "production"
		owner:          "team-a"
		subcomponentOf: "wayback-archive"
	}
}
