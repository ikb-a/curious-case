lemma lcm_coprime:
  fixes a b :: nat
  assumes "gcd a b = 1"
  shows "lcm a b = a * b"
proof -
  have "lcm a b = (a * b) div (gcd a b)" by (metis lcm_nat_def)
  then have "lcm a b = (a * b) div 1" using assms by simp
  then show "lcm a b = a * b" by simp
qed