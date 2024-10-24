lemma nonzero_division:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "1 / a \<noteq> 0" using assms by simp
  then have "a * (1 / a) = a * (1 / a)" by simp
  thus ?thesis by (smt (verit) assms divide_cancel_right nonzero_mult_div_cancel_left)
qed