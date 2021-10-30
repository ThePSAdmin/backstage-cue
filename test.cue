package backstage

import (
	"github.com/thepsadmin/backstage-cue/schema"
	"strings"
)

group: [Name=string]: schema.#Group & {
	metadata: name: Name
}

user: [Name=string]: schema.#User & {
	metadata: name: Name
}

component: [Name=string]: schema.#Component & {
	metadata: name: Name
}

_checks: {
	// Group checks 
	#group: {
		for k, v in group {
			"\(k)": v
		}
	}

	checkGroupChildren: [
		for k, v in #group if v.spec.children != _|_ for c in v.spec.children {
			#group & {"\(c)": _}
		},
	]

	// User checks
	#user: {
		for k, v in user {
			"\(k)": v
		}
	}

	checkUserMemberOf: [
		for k, v in #user if v.spec.memberOf != _|_ for c in v.spec.memberOf {
			#group & {"\(c)": _}
		},
	]

	// Component checks

	#component: {
		for k, v in component {
			"\(k)": v
		}
	}

	checkComponentOwner: [
		for k, v in #component {
			if strings.Split(v.spec.owner, ":")[0] == "user" {
				#user & {"\(strings.Split\(v.spec.owner, \":\"\)[1])": _}
			}
		}
	]
}

for GroupName, Group in group if Group.spec.children != _|_ {
	for Child in Group.spec.children {
		if group[Child] != _|_ {
			group: "\(Child)": spec: parent: GroupName
		}
	}
}
