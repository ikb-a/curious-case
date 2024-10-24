lemma gcd_positive:
  fixes a b :: nat
  assumes "a > 0" and "b > 0"
  shows "gcd a b > 0"
proof -
  from assms show ?thesis by (simp add: gcd_pos_nat)
qed