lemma linear_function_value_at_difference:
  fixes a b z y :: real
  assumes h0: "\<And>x. f x = a * x + b"
  shows "f z - f y = a * (z - y)"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)"
    using h0 by simp
  then show ?thesis by (auto simp: field_simps)
qed