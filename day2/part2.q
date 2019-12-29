input: "I" $ "," vs "" sv read0 `:/home/advent/day2/input.txt
ops: (1;2)!(+;*)
apply: {[mem;op;p1;p2;dest] mem[dest]: $[null op;mem[dest];op[p1;p2]];mem}
program: {(-1_0N 4#x)[y]}
call: {[pos;mem] instr: program[mem;pos]; p1:mem[instr[1]]; p2: mem[instr[2]]; op: ops[instr[0]]; dest: instr[3]; apply[mem;op;p1;p2;dest]}

test: {
  [nounverb]
  input: "I" $ "," vs "" sv read0 `:/home/advent/day2/input.txt;
  input[1]: nounverb[0];
  input[2]: nounverb[1];
  result: first input {call[y;x]}/til count (-1_0N 4#input);
  $[result=19690720; 0N!nounverb; 0]}
test each (til 99) cross til 99