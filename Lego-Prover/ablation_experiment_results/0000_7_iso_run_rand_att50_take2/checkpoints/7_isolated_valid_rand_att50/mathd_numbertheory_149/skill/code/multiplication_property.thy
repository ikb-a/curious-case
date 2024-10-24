lemma multiplication_property:
  fixes x y z :: real
  assumes "z \<noteq> 0"
  shows "(x * y) / z = (x / z) * y"
proof -
  have "(x * y) / z = (x * y) * (1 / z)" by (simp add: divide_simps)
  also have "... = (x * (1 / z)) * y" by (simp add: algebra_simps)
  finally show ?thesis by (simp add: divide_simps)
qed