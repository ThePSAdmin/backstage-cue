package schema


#Labels: [string]:      string
#Annotations: [string]: string
#Link: {
	url:    string
	title?: string
	icon?:  string
}

#Metadata: {
	name:         =~"^([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])(\\.([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9]))*$"
	namespace?:   string
	title?:       string
	description?: string
	labels?:      #Labels
	annotations?: #Annotations
	tags?: [...string]
	links?: [...#Link]
}

#Resource: {
	apiVersion: string
	kind:       string
	metadata:   #Metadata
	spec?:      _
}
