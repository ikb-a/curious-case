lemma multiplication_property_with_vars:
  fixes a b c d e f g h :: real
  assumes "e \<noteq> 0" "f \<noteq> 0" "g \<noteq> 0" "h \<noteq> 0"
  shows "(a * b) / (e * f) = (a / e) * (b / f) \<and> (c * d) / (g * h) = (c / g) * (d / h)"
proof -
  have "(a * b) / (e * f) = (a * b) * (1 / (e * f))" by (simp add: divide_simps)
  also have "... = (a * (1 / e)) * (b * (1 / f))" by (simp add: algebra_simps)
  finally have first_eq: "(a * b) / (e * f) = (a / e) * (b / f)" by (simp add: divide_simps)
  have "(c * d) / (g * h) = (c * d) * (1 / (g * h))" by (simp add: divide_simps)
  also have "... = (c * (1 / g)) * (d * (1 / h))" by (simp add: algebra_simps)
  finally have second_eq: "(c * d) / (g * h) = (c / g) * (d / h)" by (simp add: divide_simps)
  show ?thesis using first_eq second_eq by auto
qed