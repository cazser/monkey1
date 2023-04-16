module monkey/repl

go 1.20

replace monkey/lexer => ../lexer

replace monkey/evaluator => ../evaluator

replace monkey/object => ../object

replace monkey/parser => ../parser

replace monkey/ast => ../ast

replace monkey/token => ../token

require (
	monkey/compiler v0.0.0-00010101000000-000000000000
	monkey/lexer v0.0.0-00010101000000-000000000000
	monkey/parser v0.0.0-00010101000000-000000000000
	monkey/vm v0.0.0-00010101000000-000000000000
)

require (
	monkey/ast v0.0.0-00010101000000-000000000000 // indirect
	monkey/code v0.0.0-00010101000000-000000000000 // indirect
	monkey/object v0.0.0-00010101000000-000000000000 // indirect
	monkey/token v0.0.0-00010101000000-000000000000 // indirect
)

replace monkey/vm => ../vm

replace monkey/code => ../code

replace monkey/compiler => ../compiler
