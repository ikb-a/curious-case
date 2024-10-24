lemma product_of_reciprocals:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "(1 / a) * (1 / b) = 1 / (a * b)"
proof -
  have "(1 / a) * (1 / b) = (1 * 1) / (a * b)" by simp
  thus ?thesis by simp
qed