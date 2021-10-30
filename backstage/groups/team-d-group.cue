package backstage

group: "team-d": {
	metadata: {
		description: "Team D"
	}
	spec: {
		type: "team"
		profile: {
			displayName: "Team D"
			email:       "team-d@example.com"
			picture:     "https://avatars.dicebear.com/api/identicon/team-d@example.com.svg?background=%23fff&margin=25"
		}
		children: []
	}
}
user: "eva.macdowell": {
	spec: {
		profile: {
			displayName: "Eva MacDowell"
			email:       "eva-macdowell@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/eva-macdowell@example.com.svg?background=%23fff"
		}
		memberOf: ["team-d"]
	}
}
user: "lucy.sheehan": {
	spec: {
		profile: {
			displayName: "Lucy Sheehan"
			email:       "lucy-sheehan@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/lucy-sheehan@example.com.svg?background=%23fff"
		}
		memberOf: ["team-d"]
	}
}
