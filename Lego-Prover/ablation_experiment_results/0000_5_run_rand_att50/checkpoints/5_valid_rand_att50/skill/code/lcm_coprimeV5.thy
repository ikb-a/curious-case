lemma lcm_coprime:
  fixes a b :: nat
  assumes "gcd a b = 1"
  shows "lcm a b = a * b"
proof -
  have "lcm a b = (a * b) div (gcd a b)"
    by (metis lcm_nat_def)
  from assms have "gcd a b = 1" by simp
  then have "lcm a b = (a * b) div 1"
    by (metis \<open>lcm a b = a * b div gcd a b\<close> mult_delta_right)
  thus ?thesis by simp
qed