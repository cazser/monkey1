module monkey

go 1.20

replace monkey/repl => ./repl

replace monkey/evaluator => ./evaluator

replace monkey/lexer => ./lexer

replace monkey/object => ./object

replace monkey/parser => ./parser

replace monkey/ast => ./ast

replace monkey/token => ./token

require monkey/repl v0.0.0-00010101000000-000000000000

require (
	monkey/ast v0.0.0-00010101000000-000000000000 // indirect
	monkey/evaluator v0.0.0-00010101000000-000000000000 // indirect
	monkey/lexer v0.0.0-00010101000000-000000000000 // indirect
	monkey/object v0.0.0-00010101000000-000000000000 // indirect
	monkey/parser v0.0.0-00010101000000-000000000000 // indirect
	monkey/token v0.0.0-00010101000000-000000000000 // indirect
)
