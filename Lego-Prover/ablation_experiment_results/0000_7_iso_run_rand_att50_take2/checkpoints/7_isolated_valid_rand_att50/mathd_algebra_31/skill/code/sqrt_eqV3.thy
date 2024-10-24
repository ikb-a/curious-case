lemma sqrt_eq:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a * sqrt a = sqrt b * sqrt b" using assms(3) by auto
  then have "a = b" using assms(1) assms(2) by (simp add: power2_eq_iff)
  thus ?thesis by simp
qed