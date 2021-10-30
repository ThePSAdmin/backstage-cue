package backstage

group: boxoffice: {
	metadata: {
		description: "The boxoffice sub-department"
	}
	spec: {
		type: "sub-department"
		profile: {
			displayName: "Box Office"
			email:       "boxoffice@example.com"
		}
		children: [group."team-c", group."team-d"]
	}
}
