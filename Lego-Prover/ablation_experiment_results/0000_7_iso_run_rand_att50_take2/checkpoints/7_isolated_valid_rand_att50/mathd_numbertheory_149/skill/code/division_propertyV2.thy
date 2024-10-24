lemma division_property:
  fixes x y z :: real
  assumes "z \<noteq> 0" "y \<noteq> 0"
  shows "(x / z) * y = x * (y / z)"
proof -
  have "(x / z) * y = (x * (1 / z)) * y" by (simp add: divide_simps)
  also have "... = x * (y * (1 / z))" by (simp add: algebra_simps)
  finally show ?thesis by (simp add: divide_simps)
qed