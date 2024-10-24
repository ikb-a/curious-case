lemma gcd_lcm_commutativity:
  fixes a b :: nat
  shows "gcd a b = gcd b a" and "lcm a b = lcm b a"
proof -
  have "gcd a b = gcd b a" by (metis gcd.commute)
  thus "gcd a b = gcd b a" by auto
  have "lcm a b = lcm b a" by (metis lcm.commute)
  thus "lcm a b = lcm b a" by auto
qed