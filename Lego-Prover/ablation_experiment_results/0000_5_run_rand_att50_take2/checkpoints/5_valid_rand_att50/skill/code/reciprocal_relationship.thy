lemma reciprocal_relationship:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0"
  shows "1/x + 1/y = (x + y) / (x * y)"
proof -
  have "1/x + 1/y = y/(x * y) + x/(x * y)" by (metis assms(1) assms(2) nonzero_divide_mult_cancel_left nonzero_divide_mult_cancel_right)
  then have "1/x + 1/y = (y + x) / (x * y)" by (smt (verit) add_divide_distrib)
  thus ?thesis by simp
qed