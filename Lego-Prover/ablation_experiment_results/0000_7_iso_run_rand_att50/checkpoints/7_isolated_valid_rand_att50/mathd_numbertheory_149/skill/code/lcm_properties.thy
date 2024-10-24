lemma lcm_properties:
  fixes a b :: nat
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have "gcd a b * lcm a b = a * b" using gcd_lcm_property by simp
  then show ?thesis by (metis lcm_nat_def)
qed