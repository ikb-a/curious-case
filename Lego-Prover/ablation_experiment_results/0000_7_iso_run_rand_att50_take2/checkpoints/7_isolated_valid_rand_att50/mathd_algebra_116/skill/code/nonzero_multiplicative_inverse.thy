lemma nonzero_multiplicative_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "a * (1 / a) = 1" using assms
    by (simp add: field_simps)
  thus ?thesis by simp
qed