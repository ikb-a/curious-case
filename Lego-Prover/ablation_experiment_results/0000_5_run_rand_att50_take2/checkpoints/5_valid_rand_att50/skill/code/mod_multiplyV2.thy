lemma mod_multiply:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(c * a) mod m = (c * b) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis assms(1) mod_by_0)
next
  case False
  then have "m > 0" by simp
  have "a = b + (a div m) * m" using assms by auto
  then have "c * a = c * (b + (a div m) * m)"
    by (simp add: algebra_simps)
  then have "c * a = c * b + c * (a div m) * m"
    by (simp add: algebra_simps)
  then have "(c * a) mod m = (c * b + c * (a div m) * m) mod m"
    by simp
  also have "... = (c * b) mod m"
    by auto
  finally show ?thesis by auto
qed