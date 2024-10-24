lemma multiplicative_inverse_properties:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(1 / a) * a = 1 \<and> (1 / b) * b = 1"
proof -
  have prop_a: "(1 / a) * a = 1" using multiplicative_inverse_property[of a] assms(1) by simp
  have prop_b: "(1 / b) * b = 1" using multiplicative_inverse_property[of b] assms(2) by simp
  show ?thesis by (metis prop_a prop_b)
qed