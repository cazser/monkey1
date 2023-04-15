package compiler

import(
	"monkey/ast"
	"monkey/code"
	"monkey/object"
)

type Compiler struct{
	instructions code.Instructions
	constants []object.object
}

func New() *Compiler{
	return &Compiler{
		instructions: code.Instructions{},
		constants: []object.object{},
	}
}


func (c *Compiler) Compile(node ast.Node) error{
	return nil;
}


func (c *Compiler) ByteCode() *ByteCode{
	return &ByteCode{
		Instructions: c.instructions,
		Constants: c.constants
	}
}


type ByteCode struct{
	Instructions code.Instructions
	Constants []object.object
}