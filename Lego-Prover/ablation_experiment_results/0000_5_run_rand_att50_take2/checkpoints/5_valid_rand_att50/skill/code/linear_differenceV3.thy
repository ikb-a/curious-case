lemma linear_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes h0: "\<forall> x. f x = a * x + b"
  shows "f x - f y = a * (x - y)"
proof -
  fix x y :: real
  have "f x - f y = (a * x + b) - (a * y + b)" using h0 by auto
  then show "f x - f y = a * (x - y)" by (simp add: algebra_simps)
qed