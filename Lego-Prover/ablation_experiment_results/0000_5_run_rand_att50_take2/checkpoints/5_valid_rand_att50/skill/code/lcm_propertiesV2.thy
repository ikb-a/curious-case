lemma lcm_properties:
  fixes a b :: nat
  shows "lcm a b = (a * b) div gcd a b"
proof (cases "a = 0")
  case True
  then show ?thesis
  proof (cases "b = 0")
    case True
    then show ?thesis by auto
  next
    case False
    then show ?thesis by (metis lcm_nat_def)
  qed
next
  case False
  then show ?thesis
  proof (cases "b = 0")
    case True
    then show ?thesis by auto
  next
    case False
    then have "gcd a b > 0" using `a \<noteq> 0` `b \<noteq> 0` by auto
    have "lcm a b * gcd a b = a * b" by (simp add: lcm_gcd)
    then show ?thesis by (metis lcm_nat_def)
  qed
qed