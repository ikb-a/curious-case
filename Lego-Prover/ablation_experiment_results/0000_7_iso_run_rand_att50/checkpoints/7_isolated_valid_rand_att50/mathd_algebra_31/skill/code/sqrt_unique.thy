lemma sqrt_unique:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a^2 = sqrt b^2" using assms by auto
  thus ?thesis by (metis assms(3) real_sqrt_eq_iff)
qed