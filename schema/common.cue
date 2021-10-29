package schema

#Labels: [string]:      string
#Annotations: [string]: string
#Link: {
	url:    string
	title?: string
	icon?:  string
}

#Metadata: {
	name:         string
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
}
