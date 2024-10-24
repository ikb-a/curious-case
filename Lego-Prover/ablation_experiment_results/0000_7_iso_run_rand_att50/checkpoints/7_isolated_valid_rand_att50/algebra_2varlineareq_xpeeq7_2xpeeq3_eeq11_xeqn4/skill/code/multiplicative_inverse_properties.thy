lemma multiplicative_inverse_properties:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "(1 / a) * (1 / b) = 1 / (a * b)"
proof -
  have "1 / a * 1 / b = 1 / (a * b)" 
    by (simp add: field_simps)
  thus ?thesis by simp
qed