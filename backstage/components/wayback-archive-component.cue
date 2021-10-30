package backstage

component: "wayback-archive": {
	metadata: {
		description: "Archive of the wayback machine"
	}
	spec: {
		type:      "service"
		lifecycle: "production"
		owner:     "team-a"
		providesApis: ["wayback-archive"]
	}
}
