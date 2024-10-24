lemma extended_division_property:
  fixes x a b c d :: real
  assumes "x > 0" "c = a + b / x" "d > 0"
  shows "a = c - b / x \<and> d * a = d * (c - b / x)"
proof -
  have "a = c - b / x" using assms(2) by (simp add: algebra_simps)
  then have "d * a = d * (c - b / x)" using assms(3) by auto
  thus ?thesis by (metis \<open>a = c - b / x\<close>)
qed