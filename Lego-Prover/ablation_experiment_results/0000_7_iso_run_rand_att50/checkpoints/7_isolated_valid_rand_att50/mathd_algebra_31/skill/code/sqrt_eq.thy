lemma sqrt_eq:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "sqrt a = sqrt b"
proof -
  from assms(1) have "sqrt a = sqrt b" 
    by (simp add: assms(2) assms(3))
  then show ?thesis by simp
qed