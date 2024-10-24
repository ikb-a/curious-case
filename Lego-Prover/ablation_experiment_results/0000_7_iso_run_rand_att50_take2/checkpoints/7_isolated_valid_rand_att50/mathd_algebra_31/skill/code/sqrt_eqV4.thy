lemma sqrt_eq:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a ^ 2 = a" using assms(1) by auto
  have "sqrt b ^ 2 = b" using assms(2) by auto
  from assms(3) have "sqrt a ^ 2 = sqrt b ^ 2" by simp
  then show ?thesis using `sqrt a ^ 2 = a` `sqrt b ^ 2 = b` by auto
qed