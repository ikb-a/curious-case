lemma gcd_lcm_extended_property:
  fixes a b c :: nat
  assumes "a > 0" "b > 0" "c > 0"
  shows "gcd (a * c) (b * c) = c * gcd a b"
proof -
  have "gcd (a * c) (b * c) = gcd (c * a) (c * b)" by (auto simp: field_simps)
  also have "... = c * gcd a b"
    using assms by (metis gcd_mult_distrib_nat)
  finally show ?thesis .
qed