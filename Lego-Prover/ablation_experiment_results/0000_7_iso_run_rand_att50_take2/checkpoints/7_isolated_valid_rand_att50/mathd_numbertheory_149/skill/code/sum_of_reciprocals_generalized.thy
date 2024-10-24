lemma sum_of_reciprocals_generalized:
  fixes a b c :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "c > 0"
  shows "1/(a*c) + 1/(b*c) = (1/a + 1/b) / c"
proof -
  have "1/(a*c) + 1/(b*c) = (b + a) / (a*b*c)" using assms by (auto simp: field_simps)
  also have "... = (1/a + 1/b) / c" by (smt (verit) add_divide_distrib calculation divide_divide_eq_left)
  finally show ?thesis .
qed