lemma gcd_lcm_property:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "gcd a b * lcm a b = a * b"
proof -
  have "gcd a b > 0" using assms by auto
  then have "gcd a b * (a * b) div gcd a b = a * b" by (simp add: mult.commute)
  then show ?thesis by auto
qed