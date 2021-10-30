package backstage

group: infrastructure: {
	metadata: {
		description: "The infra department"
	}
	spec: {
		type: "department"
		_children: [group."backstage", group."boxoffice"]
	}
}
