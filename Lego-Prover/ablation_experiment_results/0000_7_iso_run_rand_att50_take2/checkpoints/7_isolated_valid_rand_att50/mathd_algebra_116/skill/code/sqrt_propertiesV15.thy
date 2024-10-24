lemma sqrt_properties:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) * sqrt (a * b) = a * b"
    using assms by auto
  also have "... = (sqrt a * sqrt a) * (sqrt b * sqrt b)"
    using assms by (simp add: real_sqrt_mult)
  also have "... = (sqrt a * sqrt b) * (sqrt a * sqrt b)"
    by (simp add: field_simps)
  finally have "sqrt (a * b) * sqrt (a * b) = (sqrt a * sqrt b) * (sqrt a * sqrt b)" .
  then show "sqrt (a * b) = sqrt a * sqrt b"
    using real_sqrt_mult by blast
qed