lemma cross_multiplication_inequality:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y"
    and "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using assms(4) by simp
  then have rearranged: "x - y = (2/y - 2/x)" by (smt (verit))
  have cross_mult: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged by sos
  then have "x * y = 2" 
    using assms(3) by sos
  thus ?thesis by simp
qed