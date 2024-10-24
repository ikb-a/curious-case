lemma non_zero_sum_property_arbitrary:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "k > 0"
  shows "k * (1 / a) + k * (1 / b) = k * (1 / a + 1 / b)"
proof -
  have "k * (1 / a) + k * (1 / b) = k * ((1 / a) + (1 / b))"
    by (simp add: algebra_simps)
  thus ?thesis by simp
qed