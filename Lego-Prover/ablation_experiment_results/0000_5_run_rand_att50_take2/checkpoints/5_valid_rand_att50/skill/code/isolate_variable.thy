lemma isolate_variable:
  fixes a b c :: real
  assumes "a * x + b = c" and "a \<noteq> 0"
  shows "x = (c - b) / a"
proof -
  have "a * x = c - b" using assms by simp
  then show ?thesis by (metis assms(2) div_by_1 frac_eq_eq mult.commute mult_cancel_left1 zero_neq_one)
qed