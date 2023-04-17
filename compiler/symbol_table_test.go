package compiler

import "testing"

func TestDefine(t *testing.T){
	expected:= map[string]Symbol{
		"a": Symbol{Name:"a", Scope: GlobalScope, Index: 0},
		"b": Symbol{Name:"b", Scope: GlobalScope, Index: 1}, 
	}

	gloabl:= NewSymbolTable();

	a:= gloabl.Define("a")

	if a!= expected["a"]{
		t.Errorf("expected a=%+v, got=%+v", expected["a"], a)
	}
	b:= gloabl.Define("b")

	if b!= expected["b"]{
		t.Errorf("expected b=%+v, got=%+v", expected["b"], b)
	}



}


func TestResolveGlobal(t *testing.T){
	gloabl:= NewSymbolTable();
	gloabl.Define("a")
	gloabl.Define("b")

	expected:= []Symbol{
		Symbol{Name:"a", Scope: GlobalScope, Index: 0},
		Symbol{Name:"b", Scope: GlobalScope, Index: 1}, 
		
	}

	for _, sym:= range expected{
		result, ok := gloabl.Resolve(sym.Name)

		if !ok{
			t.Errorf("name %s not resolveable", sym.Name)
		}

		if result != sym{
			t.Errorf("expected %s to resolve to %+v got%+v", 
		 sym.Name, sym, result)
		}
	}
}