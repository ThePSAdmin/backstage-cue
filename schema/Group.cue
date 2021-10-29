package schema

#Group: #Resource & {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Group"
	spec: {
		type:     string
		profile?: _
		parent?:  string
		children?: [...string]
	}
}
