lemma lcm_properties:
  fixes a b :: nat
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have "lcm a b * gcd a b = a * b" 
    by (simp add: lcm_gcd)
  then have "lcm a b = (a * b) div gcd a b"
    by (metis lcm_nat_def)
  thus ?thesis by simp
qed