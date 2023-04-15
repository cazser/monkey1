module monkey/comipler

go 1.20

replace monkey/ast => ../ast

replace monkey/code => ../code

replace monkey/object => ../object

replace monkey/token => ../token

require (
	monkey/ast v0.0.0-00010101000000-000000000000
	monkey/code v0.0.0-00010101000000-000000000000
	monkey/lexer v0.0.0-00010101000000-000000000000
	monkey/object v0.0.0-00010101000000-000000000000
	monkey/parser v0.0.0-00010101000000-000000000000
)

require monkey/token v0.0.0-00010101000000-000000000000 // indirect

replace monkey/lexer => ../lexer

replace monkey/parser => ../parser
