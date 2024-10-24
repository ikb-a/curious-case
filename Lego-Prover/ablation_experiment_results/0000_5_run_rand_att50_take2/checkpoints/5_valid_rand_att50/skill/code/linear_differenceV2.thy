lemma linear_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
  shows "f x - f y = (x - y) * a"
proof -
  have "f x - f y = (a * x + b) - (a * y + b)" by (simp add: assms(1))
  then have "f x - f y = a * x - a * y" by (simp)
  then show ?thesis by (simp add: algebra_simps)
qed