package backstage

component: "wayback-archive-ingestion": {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	metadata: {
		name:        "wayback-archive-ingestion"
		description: "Ingestion subsystem of the Wayback Archive"
	}
	spec: {
		type:           "service"
		lifecycle:      "production"
		owner:          "team-d"
		subcomponentOf: "wayback-archive"
	}
}
