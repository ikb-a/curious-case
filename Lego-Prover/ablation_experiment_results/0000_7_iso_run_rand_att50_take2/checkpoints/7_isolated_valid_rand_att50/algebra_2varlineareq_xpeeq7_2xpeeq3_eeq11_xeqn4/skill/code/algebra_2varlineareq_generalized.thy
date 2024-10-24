theorem algebra_2varlineareq_generalized:
  fixes x y :: complex
  assumes h0 : "x + y = a"
    and h1 : "2 * x + y = b"
  shows "y = a - x \<and> x = (b - a) / 1" 
proof -
  have y_eq: "y = a - x" using h0 by auto
  have substitution: "2 * x + (a - x) = b" using y_eq h1 by simp
  have simplified_eq: "x + a = b" using substitution by (simp add: algebra_simps)
  have x_value: "x = b - a" using simplified_eq by auto
  show ?thesis using y_eq x_value by auto
qed