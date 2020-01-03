
input: "I" $ "-" vs "" sv read0 `:/home/advent/day4/input.txt
valid: {[password] (all{0<=x}each deltas {"I"$x}each password) and (2 in deltas where differ password,"a")}
sum valid each string input[0] + til input[1] - input[0]