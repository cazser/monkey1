module monkey/object

go 1.20

replace monkey/ast => ../ast

replace monkey/token => ../token

require (
	monkey/ast v0.0.0-00010101000000-000000000000
	monkey/code v0.0.0-00010101000000-000000000000
)

require monkey/token v0.0.0-00010101000000-000000000000 // indirect

replace monkey/code => ../code
