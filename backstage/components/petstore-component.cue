package backstage

component: petstore: {
	metadata: {
		// This is an extra long description
		description: "The Petstore is an example API used to show features of the OpenAPI spec."
		links: [{
			url:   "https://github.com/swagger-api/swagger-petstore"
			title: "GitHub Repo"
			icon:  "github"
		}]
	}
	spec: {
		type:      "service"
		lifecycle: "experimental"
		owner:     "team-c"
		providesApis: [
			"petstore",
			"streetlights",
			"hello-world",
		]
	}
}
