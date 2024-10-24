lemma lcm_coprime:
  fixes a b :: nat
  assumes "gcd a b = 1"
  shows "lcm a b = a * b"
proof -
  have "lcm a b * gcd a b = a * b" by (simp add: lcm_gcd)
  then have "lcm a b * 1 = a * b" using assms by simp
  thus ?thesis by (simp add: assms)
qed