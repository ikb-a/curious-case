lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "a + 1 \<le> b"
proof -
  from assms have "b > a" by simp
  then show "a + 1 \<le> b" 
  proof (cases "b = a + 1")
    case True
    then show ?thesis by simp
  next
    case False
    then have "b > a + 1" using `b > a` by auto
    then show ?thesis by simp
  qed
qed