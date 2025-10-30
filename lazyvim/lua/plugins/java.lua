return {
	"nvim-java/nvim-java",
	config = false,
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			opts = {
				servers = {
					-- Your JDTLS configuration goes here
					jdtls = {
						settings = {
							java = {
								configuration = {
									runtimes = {
										{
											name = "JavaSE-21",
											path = "/usr/lib/jvm/openjdk21",
										},
										{
											name = "JavaSE-23",
											path = "/home/dagur/.gradle/jdks/eclipse_adoptium-23-amd64-linux.2"
										},
									},
								},
							},
						},
					},
				},
				setup = {
					jdtls = function()
						-- Your nvim-java configuration goes here
						require("java").setup({
							root_markers = {
							--   "settings.gradle",
							--   "settings.gradle.kts",
							--   "pom.xml",
								"mvnw",
								"gradlew",
							-- "build.gradle",
							-- "build.gradle.kts",
							},
						})
					end,
				},
			},
		},
	},
}
