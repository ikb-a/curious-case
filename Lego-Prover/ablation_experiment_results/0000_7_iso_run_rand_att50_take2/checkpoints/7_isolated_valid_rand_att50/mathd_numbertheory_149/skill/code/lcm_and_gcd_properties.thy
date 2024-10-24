lemma lcm_and_gcd_properties:
  fixes a b :: nat
  shows "lcm a b = (a * b) div gcd a b"
    and "gcd a b * lcm a b = a * b"
proof -
  have lcm_def: "lcm a b * gcd a b = a * b" by (simp add: gcd_lcm)
  thus "lcm a b = (a * b) div gcd a b" by (simp add: lcm_nat_def)
  thus "gcd a b * lcm a b = a * b" by auto
qed