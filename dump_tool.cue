package backstage

import "encoding/yaml"

x: [group, user]

command: dump: {
	task: print: {
		kind: "print"
		text: yaml.MarshalStream([x])
	}
}
