lemma scalar_multiplication_inverse_extended:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(a * (1 / a)) * (b * (1 / b)) = 1"
proof -
  have "a * (1 / a) = 1" using assms(1) by (simp add: field_simps)
  have "b * (1 / b) = 1" using assms(2) by (simp add: field_simps)
  thus ?thesis by (metis \<open>a * (1 / a) = 1\<close> comm_monoid_mult_class.mult_1)
qed