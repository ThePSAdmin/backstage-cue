package schema

#Component: #Resource & {
	apiVersion: "backstage.io/v1alpha1"
	kind:       "Component"
	spec: {
		type:            string
		lifecycle:       string
		owner:           string
		system?:         string
		subcomponentOf?: string
		providesApis?: [...string]
		consumesApis?: [...string]
		dependsOn?: [...string]
	}
}
