package backstage

import (
	"github.com/thepsadmin/backstage-cue/schema"
)

group: [Name=string]: {
	metadata: name: Name
}

for k, v in group {
  if v.spec._children != _|_ {
    for c in v.spec._children {
      group: "\(c.metadata.name)": spec: parent: k
    }
  }
}

let Group = group
backstage: group: {
	for k, v in Group {
		"\(k)": schema.#Group & v & {
			if v.spec._children != _|_ {
				spec: children: [
					for c in v.spec._children {
						c.metadata.name
					},
				]
			}
		}
	}
}
