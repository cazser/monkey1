module monkey/evaluator

go 1.20

replace monkey/ast => ../ast

replace monkey/token => ../token

require (
	monkey/ast v0.0.0-00010101000000-000000000000
	monkey/lexer v0.0.0-00010101000000-000000000000
	monkey/object v0.0.0-00010101000000-000000000000
	monkey/parser v0.0.0-00010101000000-000000000000
)

require monkey/token v0.0.0-00010101000000-000000000000 // indirect

replace monkey/object => ../object

replace monkey/lexer => ../lexer

replace monkey/parser => ../parser
