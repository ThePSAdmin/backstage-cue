package backstage

component: "wayback-archive-ingestion": {
	metadata: {
		description: "Ingestion subsystem of the Wayback Archive"
	}
	spec: {
		type:           "service"
		lifecycle:      "production"
		owner:          "team-d"
		subcomponentOf: "wayback-archive"
	}
}
