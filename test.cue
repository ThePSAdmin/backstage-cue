package test

import "github.com/thepsadmin/backstage-cue/schema"

groups: [Name=string]: schema.#Group & {
	metadata: name: Name
}

for GroupName, Group in groups if Group.spec._children != _|_ {
  groups: "\(GroupName)": spec: children: [for x in Group.spec._children {x.metadata.name}]
	for Child in Group.spec._children {
		groups: "\(Child.metadata.name)": spec: parent: GroupName
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
	spec: _children: [groups.infrastructure]
}

groups: "infrastructure": {
	metadata: {
		description: "The infra department"
	}
	spec: {
		type: "department"
	}
}
