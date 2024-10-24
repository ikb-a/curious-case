lemma square_root_property:
  fixes a b :: real
  assumes "a = sqrt b" and "b >= 0"
  shows "a^2 = b"
proof -
  have "a^2 = (sqrt b)^2" using assms(1) by simp
  also have "(sqrt b)^2 = b" using assms(2) by auto
  finally show ?thesis by simp
qed