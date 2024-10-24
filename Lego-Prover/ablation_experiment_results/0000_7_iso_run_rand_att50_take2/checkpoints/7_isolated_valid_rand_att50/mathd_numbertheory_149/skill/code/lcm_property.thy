lemma lcm_property:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have "gcd a b > 0"
    using assms by auto
  then have "lcm a b * gcd a b = a * b"
    by auto
  then have "lcm a b = (a * b) div gcd a b"
    using `gcd a b > 0` by (metis lcm_nat_def)
  thus ?thesis .
qed