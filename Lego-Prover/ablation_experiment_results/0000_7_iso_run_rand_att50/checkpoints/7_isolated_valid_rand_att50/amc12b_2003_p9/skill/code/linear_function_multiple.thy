lemma linear_function_multiple:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x - f y = a * (x - y)"
  shows "\<forall> z. f z - f y = a * (z - y)"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)"
    using assms(1) by simp
  then show ?thesis by (metis assms(1) diff_self eq_iff_diff_eq_0 linear_function_difference_extended mult_cancel_right1)
qed