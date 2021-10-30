package backstage

import "encoding/yaml"

x: [backstage]

command: dump: {
	task: print: {
		kind: "print"
		text: yaml.MarshalStream([x])
	}
}
