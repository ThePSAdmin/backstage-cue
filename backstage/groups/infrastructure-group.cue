package backstage

group: infrastructure: {
	metadata: {
		description: "The infra department"
	}
	spec: {
		type: "department"
		children: [group."backstage", group."boxoffice"]
	}
}
