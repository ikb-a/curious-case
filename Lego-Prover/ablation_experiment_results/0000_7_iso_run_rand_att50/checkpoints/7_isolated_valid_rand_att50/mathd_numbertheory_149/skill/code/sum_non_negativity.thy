lemma sum_non_negativity:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "a + b + c + d > 0"
proof -
  have "a + b > 0" using assms by simp
  then have "a + b + c > 0" using assms by simp
  then show ?thesis using assms by simp
qed