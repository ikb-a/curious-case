lemma sqrt_difference_property:
  fixes a b :: real
  assumes "a + 9 = b + 9"
  shows "sqrt a = sqrt b"
proof -
  have "a = b" using assms by simp
  thus "sqrt a = sqrt b" using real_sqrt_eq_iff by simp
qed