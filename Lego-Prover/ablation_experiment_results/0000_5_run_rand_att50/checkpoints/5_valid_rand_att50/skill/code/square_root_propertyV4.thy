lemma square_root_property:
  fixes a b :: real
  assumes "a = sqrt b" and "b >= 0"
  shows "a^2 = b"
proof -
  have "a^2 = (sqrt b)^2" using assms(1) by simp
  then show ?thesis using assms(2) by (simp add: power2_eq_square)
qed