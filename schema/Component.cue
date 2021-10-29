package schema

#Component: #Resource & {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	spec: {
		type:      string
		lifecycle: string
		_owner:    #Group
		owner:     _owner.metadata.name
	}
}
