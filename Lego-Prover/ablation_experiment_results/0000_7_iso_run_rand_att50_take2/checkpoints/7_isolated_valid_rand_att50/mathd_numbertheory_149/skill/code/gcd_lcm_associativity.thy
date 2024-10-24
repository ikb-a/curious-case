lemma gcd_lcm_associativity:
  fixes a b c :: nat
  shows "gcd a (gcd b c) = gcd (gcd a b) c" and "lcm a (lcm b c) = lcm (lcm a b) c"
proof -
  have "gcd a (gcd b c) = gcd (gcd a b) c" by (metis gcd.assoc)
  thus "gcd a (gcd b c) = gcd (gcd a b) c" by auto
  have "lcm a (lcm b c) = lcm (lcm a b) c" by (metis lcm.assoc)
  thus "lcm a (lcm b c) = lcm (lcm a b) c" by auto
qed