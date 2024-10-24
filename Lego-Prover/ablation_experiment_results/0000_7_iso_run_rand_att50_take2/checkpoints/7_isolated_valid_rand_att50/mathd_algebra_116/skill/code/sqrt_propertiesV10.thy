lemma sqrt_properties:
  fixes a :: real
  shows "sqrt (a^2) = abs a"
proof -
  have "sqrt (a^2) * sqrt (a^2) = a^2"
    by (simp add: power2_eq_square)
  also have "... = (abs a) * (abs a)"
    by sos
  finally have "sqrt (a^2) * sqrt (a^2) = (abs a) * (abs a)" .
  have "sqrt (a^2) \<ge> 0"
    by auto
  then show ?thesis
    using `sqrt (a^2) * sqrt (a^2) = (abs a) * (abs a)` by auto
qed