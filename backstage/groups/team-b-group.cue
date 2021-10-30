package backstage

group: "team-b": {
	metadata: {
		description: "Team B"
	}
	spec: {
		type: "team"
		profile: {
			displayName: "Team B"
			email:       "team-b@example.com"
			picture:     "https://avatars.dicebear.com/api/identicon/team-b@example.com.svg?background=%23fff&margin=25"
		}
		children: []
	}
}
user: "amelia.park": {
	spec: {
		profile: {
			displayName: "Amelia Park"
			email:       "amelia-park@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/amelia-park@example.com.svg?background=%23fff"
		}
		memberOf: ["team-b"]
	}
}
user: "colette.brock": {
	spec: {
		profile: {
			displayName: "Colette Brock"
			email:       "colette-brock@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/colette-brock@example.com.svg?background=%23fff"
		}
		memberOf: ["team-b"]
	}
}
user: "jenny.doe": {
	spec: {
		profile: {
			displayName: "Jenny Doe"
			email:       "jenny-doe@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/jenny-doe@example.com.svg?background=%23fff"
		}
		memberOf: ["team-b"]
	}
}
user: "jonathon.page": {
	spec: {
		profile: {
			displayName: "Jonathon Page"
			email:       "jonathon-page@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/jonathon-page@example.com.svg?background=%23fff"
		}
		memberOf: ["team-b"]
	}
}
user: "justine.barrow": {
	spec: {
		profile: {
			displayName: "Justine Barrow"
			email:       "justine-barrow@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/justine-barrow@example.com.svg?background=%23fff"
		}
		memberOf: ["team-b"]
	}
}
