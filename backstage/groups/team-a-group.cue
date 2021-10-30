package backstage

group: "team-a": {
	metadata: {
		description: "Team A"
	}
	spec: {
		type: "team"
		profile: {
			// Intentional no displayName for testing
			email:   "team-a@example.com"
			picture: "https://avatars.dicebear.com/api/identicon/team-a@example.com.svg?background=%23fff&margin=25"
		}
		children: []
	}
}
user: "breanna.davison": {
	spec: {
		profile: {
			// Intentional no displayName for testing
			email:   "breanna-davison@example.com"
			picture: "https://avatars.dicebear.com/api/avataaars/breanna-davison@example.com.svg?background=%23fff"
		}
		memberOf: ["team-a"]
	}
}
user: "janelle.dawe": {
	spec: {
		profile: {
			displayName: "Janelle Dawe"
			email:       "janelle-dawe@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/janelle-dawe@example.com.svg?background=%23fff"
		}
		memberOf: ["team-a"]
	}
}
user: "nigel.manning": {
	spec: {
		profile: {
			displayName: "Nigel Manning"
			email:       "nigel-manning@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/nigel-manning@example.com.svg?background=%23fff"
		}
		memberOf: ["team-a"]
	}
}
user: guest: {
	spec: {
		profile: {
			displayName: "Guest User"
			email:       "guest@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/guest@example.com.svg?background=%23fff"
		}
		memberOf: ["team-a"]
	}
}
