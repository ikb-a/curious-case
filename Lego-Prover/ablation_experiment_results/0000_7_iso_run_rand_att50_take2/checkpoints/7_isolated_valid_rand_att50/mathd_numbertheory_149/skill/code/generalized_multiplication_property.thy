lemma generalized_multiplication_property:
  fixes x y z w :: real
  assumes "z \<noteq> 0" "w \<noteq> 0"
  shows "(x * y) / (z * w) = (x / z) * (y / w)"
proof -
  have "(x * y) / (z * w) = (x * y) * (1 / (z * w))" by (simp add: divide_simps)
  also have "... = (x * (1 / z)) * (y * (1 / w))" by (simp add: algebra_simps)
  finally show ?thesis by (simp add: divide_simps)
qed