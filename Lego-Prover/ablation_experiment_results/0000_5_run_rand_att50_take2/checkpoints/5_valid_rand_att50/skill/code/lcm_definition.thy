lemma lcm_definition:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "lcm a b = (a * b) div gcd a b"
proof -
  have "lcm a b * gcd a b = a * b"
    by auto
  then show ?thesis
    by (simp add: lcm_gcd)
qed