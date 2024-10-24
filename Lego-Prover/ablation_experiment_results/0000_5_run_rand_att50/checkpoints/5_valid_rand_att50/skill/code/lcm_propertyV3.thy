lemma lcm_property:
  fixes a b :: nat
  assumes "a > 0" and "b > 0"
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have gcd_pos: "gcd a b > 0" using assms by (simp add: gcd_pos_nat)
  have "lcm a b * gcd a b = a * b" 
    by (simp add: lcm_gcd)
  then have "lcm a b = (a * b) div gcd a b" 
    by (metis gcd_pos lcm_nat_def)
  thus ?thesis by simp
qed