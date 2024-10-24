lemma lcm_properties:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have "gcd a b > 0" using assms by auto
  have "lcm a b * gcd a b = a * b" 
    using lcm_gcd[of a b] assms by auto
  thus ?thesis 
    by (metis lcm_nat_def)
qed