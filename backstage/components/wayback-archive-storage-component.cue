package backstage

component: "wayback-archive-storage": {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	metadata: {
		name:        "wayback-archive-storage"
		description: "Storage subsystem of the Wayback Archive"
	}
	spec: {
		type:           "service"
		lifecycle:      "production"
		owner:          "team-a"
		subcomponentOf: "wayback-archive"
	}
}
