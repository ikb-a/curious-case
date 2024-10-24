lemma linear_function_difference:
  fixes a b :: real
    and f :: "real \<Rightarrow> real"
  assumes h0: "\<forall>x. f x = a * x + b"
    and h1: "f y - f x = k"  
  shows "f (y + d) - f x = (d * a) + k"  
proof -
  have "f (y + d) = a * (y + d) + b" by (simp add: h0)
  also have "... = a * y + a * d + b" by (simp add: algebra_simps)
  also have "... = (a * y + b) + a * d" by (simp add: algebra_simps)
  also have "... = f y + a * d" by (simp add: h0)
  finally have "f (y + d) - f x = (f y - f x) + a * d" by (simp add: algebra_simps)
  thus ?thesis by (simp add: h1)
qed