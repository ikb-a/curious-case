lemma lcm_property:
  fixes a b :: nat
  assumes "a > 0" and "b > 0"
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have "lcm a b = (a * b) div (gcd a b)" 
    by (metis lcm_nat_def)  
  moreover have "gcd a b > 0"
    using assms by auto  
  ultimately show "lcm a b = (a * b) div gcd a b" 
    by simp  
qed