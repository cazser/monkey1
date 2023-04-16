module monkey/vm

go 1.20

replace monkey/ast => ../ast

replace monkey/lexer => ../lexer

replace monkey/object => ../object

replace monkey/parser => ../parser

replace monkey/token => ../token

require (
	monkey/ast v0.0.0-00010101000000-000000000000
	monkey/compiler v0.0.0-00010101000000-000000000000
	monkey/lexer v0.0.0-00010101000000-000000000000
	monkey/object v0.0.0-00010101000000-000000000000
	monkey/parser v0.0.0-00010101000000-000000000000
)

require (
	monkey/code v0.0.0-00010101000000-000000000000 // indirect
	monkey/token v0.0.0-00010101000000-000000000000 // indirect
)

replace monkey/compiler => ../compiler

replace monkey/code => ../code
