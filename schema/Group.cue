package schema

#Group: #Resource & {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Group"
	spec: {
		type:     string
		profile?: _
		_parent?: #Group
		parent?:  _parent.metadata.name
	}
}
