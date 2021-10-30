package backstage

import "github.com/thepsadmin/backstage-cue/schema"

group: [Name=string]: schema.#Group & {
	metadata: name: Name
}

user: [Name=string]: schema.#User & {
	metadata: name: Name
}

_checks: {
	#group: {
		for k, v in group {
			"\(k)": v
		}
	}

	checkGroupChildren: [
		for k, v in #group if v.spec.children != _|_ for c in v.spec.children {
			#group & {}
		},
	]

	#user: {
		for k, v in user {
			"\(k)": v
		}
	}

	checkUserChildren: [
		for k, v in #user if v.spec.memberOf != _|_ for c in v.spec.memberOf {
			#group & {}
		},
	]
}

for GroupName, Group in group if Group.spec.children != _|_ {
	for Child in Group.spec.children {
		if group[Child] != _|_ {
			group: "\(Child)": spec: parent: GroupName
		}
	}
}
