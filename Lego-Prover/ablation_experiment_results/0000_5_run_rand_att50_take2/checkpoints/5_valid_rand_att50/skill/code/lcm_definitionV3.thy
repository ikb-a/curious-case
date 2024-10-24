lemma lcm_definition:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have "lcm a b * gcd a b = a * b" 
    using assms by auto
  then have "lcm a b = (a * b) div gcd a b"
    by (metis lcm_nat_def)
  thus ?thesis by simp
qed