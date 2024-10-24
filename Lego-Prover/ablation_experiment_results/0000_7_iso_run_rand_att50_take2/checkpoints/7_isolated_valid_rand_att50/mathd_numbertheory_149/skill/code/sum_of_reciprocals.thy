lemma sum_of_reciprocals:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "1/a + 1/b = (a + b) / (a*b)"
proof -
  have "1/a + 1/b = b/(a*b) + a/(a*b)" using assms by simp
  thus ?thesis by (smt (verit) add.commute add_divide_distrib)
qed