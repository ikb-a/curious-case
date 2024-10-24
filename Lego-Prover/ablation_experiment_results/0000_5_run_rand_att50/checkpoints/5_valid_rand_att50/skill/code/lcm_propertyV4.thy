lemma lcm_property:
  fixes a b :: nat
  assumes "a > 0" and "b > 0"
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have "lcm a b * gcd a b = a * b" 
    by (simp add: lcm_gcd) 
  have "gcd a b > 0"
    using assms by auto 
  then show "lcm a b = (a * b) div gcd a b" 
    using `lcm a b * gcd a b = a * b` by (metis lcm_nat_def)
qed