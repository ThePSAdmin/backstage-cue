package backstage

group: backstage: {
	metadata: {
		description: "The backstage sub-department"
	}
	spec: {
		type: "sub-department"
		profile: {
			displayName: "Backstage"
			email:       "backstage@example.com"
			picture:     "https://avatars.dicebear.com/api/identicon/backstage@example.com.svg?background=%23fff&margin=25"
		}
		_children: [group."team-a", group."team-b"]
	}
}
