lemma linear_function_difference_invariant:
  fixes a b c d :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "c < d"
  shows "f d - f c = a * (d - c)"
proof -
  have "f d - f c = (a * d + b) - (a * c + b)"
    using assms(1) by simp
  then show ?thesis by (auto simp: field_simps)
qed