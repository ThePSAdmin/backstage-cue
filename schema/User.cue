package schema

#User: #Resource & {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "User"
	spec: {
		profile?: {
			displayName?: string
			email?:       string
			picture?:     string
		}
		memberOf: [...string]
	}
}
