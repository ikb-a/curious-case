lemma sum_of_inverses:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0"
  shows "1 / x + 1 / y = (x + y) / (x * y)"
proof -
  have "1 / x + 1 / y = y / (x * y) + x / (x * y)" using assms by simp
  thus ?thesis by (smt (verit) add.commute add_divide_distrib)
qed