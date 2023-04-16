package code
import "testing"
func TestMake(t *testing.T){
    tests:=[]struct{
			op Opcode
			operands []int
			expected []byte 
		}{
			{OpConstant, []int{65534}, []byte{byte(OpConstant), 255, 254}},
			{OpAdd, []int{}, []byte{byte(OpAdd)}},
		}

		for _, tt := range tests{
			instruction:= Make(tt.op, tt.operands...)
      if len(instruction)!=len(tt.expected){
				t.Errorf("instruction has wrong length. want=%d, got=%d", 
			    len(tt.expected), len(instruction))
			}

			for i, b := range tt.expected{
				if instruction[i]!= tt.expected[i]{
					t.Errorf("wrong type at pos %d. want=%d, got=%d",
				i, b, instruction[i])
				}
			}

		}
}



func TestInstructionsString(t *testing.T){
	instructions:= []Instructions{
		Make(OpAdd),
		Make(OpConstant, 2),
		Make(OpConstant, 65535),
	}
	expected:= "0000 OpAdd\n0001 OpConstant 2\n0004 OpConstant 65535\n";
  
	concatted:= Instructions{};
	for _, ins:= range instructions{
		concatted= append(concatted, ins...)
	}

	if concatted.String() != expected{
		t.Errorf("instructions wrongly formatted.\nwant=%q\ngot=%q",
	expected, concatted.String());
	}
}