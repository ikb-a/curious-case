lemma non_zero_times_inverse_generalized:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "c * (1 / a) = c / a"
proof -
  have "c * (1 / a) = (c * 1) / a" by (simp add: divide_inverse)
  thus ?thesis by simp
qed