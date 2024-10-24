theorem equality_transformation:
  fixes x y z :: real
  assumes h0: "x + 2/x = y + 2/y"
    and h1: "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y"
  shows "x * y = 2"
proof -
  have rearranged: "x - y = (2/y - 2/x)" using h0 by simp
  have cross_mult: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged by sos
  then have "x * y = 2" 
    using h1(3) by sos
  thus ?thesis by simp
qed