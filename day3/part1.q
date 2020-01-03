get_point: {("ABCDEFGHIJKLMNOPQRSTUVWXYZ"?x[0]; "I"$1_x)}
input: {get_point each "," vs x} each 1_read0 `:/home/advent/day3/input.txt
line1: {(x;y)}'[1_input[0];-1_input[0]]
line2: {(x;y)}'[1_input[1];-1_input[1]]

p:{x {raze y,/:'x except/:y}[ix;]/[-1+count x;ix:til count x]}
intersect: {[segment1]
  leftx1:segment1[0][0]; lefty1:segment1[0][1]; leftx2:segment1[1][0]; lefty2:segment1[1][1];
  rightx1:segment1[2][0]; righty1:segment1[2][1]; rightx2:segment1[3][0]; righty2:segment1[3][1];
  0N! (leftx1;rightx1;rightx2;leftx1 <= rightx2;rightx1 <= leftx2);
  
  (leftx1 <= rightx2) and (rightx1 <= leftx2) and (lefty1 <= righty1) and (righty1 <= lefty1)
  }

intersectionPoint: {[segment1]
  leftx1:segment1[0][0]; lefty1:segment1[0][1]; leftx2:segment1[1][0]; lefty2:segment1[1][1];
  rightx1:segment1[2][0]; righty1:segment1[2][1]; rightx2:segment1[3][0]; righty2:segment1[3][1];
  (lefty1-lefty2)*(rightx1-rightx2) - (rightx)
  }

intersections: pairs: line1 cross line2; {x where y}[pairs; intersect each pairs] 
