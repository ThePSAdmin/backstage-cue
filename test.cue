package test

import "github.com/thepsadmin/backstage-cue/schema"

groups: [Name=string]: schema.#Group & {
	metadata: name: Name
}

_checks: {
	#groups: {
		for k, v in groups {
			"\(k)": v
		}
	}

	checkChilds: [
		for k, v in #groups if v.spec.children != _|_ for c in v.spec.children {
			#groups & {"\(c)": _}
		},
	]
}

for GroupName, Group in groups if Group.spec.children != _|_ {
	for Child in Group.spec.children {
		if groups[Child] != _|_ {
			groups: "\(Child)": spec: parent: GroupName
		}
	}
}

groups: "acme-corp": {
	metadata: {
		description: "The acme-corp organization"
		links: [
			{
				url:   "http://www.acme.com/"
				title: "Website"
			},
			{
				url:   "https://meta.wikimedia.org/wiki/"
				title: "Intranet"
			},
		]
	}
	spec: type: "organization"
	spec: children: ["infrastructure"]
}

groups: "infrastructure": {
	metadata: {
		description: "The infra department"
	}
	spec: {
		type: "department"
	}
}
