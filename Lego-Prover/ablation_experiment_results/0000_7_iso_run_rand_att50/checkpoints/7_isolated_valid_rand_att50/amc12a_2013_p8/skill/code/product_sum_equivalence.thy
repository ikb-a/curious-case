lemma product_sum_equivalence:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y" 
    and "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have eq: "x + 2/x = y + 2/y" using assms(4) by auto
  have rearranged: "x - y = (2/y - 2/x)" 
    using eq by (simp add: algebra_simps)
  have cross_mult: "(x - y) * x * y = 2 * x - 2 * y" 
    using rearranged by sos
  have factored: "(x - y) * x * y = 2 * (x - y)" 
    using cross_mult by (simp add: field_simps)
  hence "x * y = 2" 
    using assms(3) by sos
  thus ?thesis by simp
qed