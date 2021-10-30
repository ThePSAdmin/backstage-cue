package backstage

group: "team-c": {
	metadata: {
		description: "Team C"
	}
	spec: {
		type: "team"
		profile: {
			displayName: "Team C"
			email:       "team-c@example.com"
			picture:     "https://avatars.dicebear.com/api/identicon/team-c@example.com.svg?background=%23fff&margin=25"
		}
		children: []
	}
}
user: "calum.leavy": {
	spec: {
		profile: {
			displayName: "Calum Leavy"
			email:       "calum-leavy@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/calum-leavy@example.com.svg?background=%23fff"
		}
		memberOf: ["team-c"]
	}
}
user: "frank.tiernan": {
	spec: {
		profile: {
			displayName: "Frank Tiernan"
			email:       "frank-tiernan@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/frank-tiernan@example.com.svg?background=%23fff"
		}
		memberOf: ["team-c"]
	}
}
user: "peadar.macmahon": {
	spec: {
		profile: {
			displayName: "Peadar MacMahon"
			email:       "peadar-macmahon@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/peadar-macmahon@example.com.svg?background=%23fff"
		}
		memberOf: ["team-c"]
	}
}
user: "sarah.gilroy": {
	spec: {
		profile: {
			displayName: "Sarah Gilroy"
			email:       "sarah-gilroy@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/sarah-gilroy@example.com.svg?background=%23fff"
		}
		memberOf: ["team-c"]
	}
}
user: "tara.macgovern": {
	spec: {
		profile: {
			displayName: "Tara MacGovern"
			email:       "tara-macgovern@example.com"
			picture:     "https://avatars.dicebear.com/api/avataaars/tara-macgovern@example.com.svg?background=%23fff"
		}
		memberOf: ["team-c"]
	}
}
