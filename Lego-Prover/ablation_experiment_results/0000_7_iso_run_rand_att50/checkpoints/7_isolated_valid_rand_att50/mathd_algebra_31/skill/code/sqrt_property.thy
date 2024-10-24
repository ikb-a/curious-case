lemma sqrt_property:
  fixes u v :: real
  assumes "u >= 0" "v >= 0"
  shows "sqrt (u + v) <= sqrt u + sqrt v"
proof -
  have "sqrt (u + v) = sqrt (sqrt u^2 + sqrt v^2)"
    using assms by simp
  also have "... <= sqrt u + sqrt v"
    by (metis assms(1) assms(2) calculation sqrt_add_le_add_sqrt)
  finally show ?thesis by simp
qed