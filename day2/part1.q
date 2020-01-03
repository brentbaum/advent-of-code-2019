input: "I" $ "," vs "" sv read0 `:/home/advent/day3/input.txt
ops: (1;2)!(+;*)
apply: {[mem;op;p1;p2;dest] mem[dest]: $[null op;mem[dest];op[p1;p2]];mem}
call: {[pos;mem] instr: program[mem;pos]; p1:mem[instr[1]]; p2: mem[instr[2]]; op: ops[instr[0]]; dest: instr[3]; apply[mem;op;p1;p2;dest]}
program: {(-1_0N 4#x)[y]}


input[1]: 12
input[2]: 2
first input {call[y;x]}/til count (-1_0N 4#input)