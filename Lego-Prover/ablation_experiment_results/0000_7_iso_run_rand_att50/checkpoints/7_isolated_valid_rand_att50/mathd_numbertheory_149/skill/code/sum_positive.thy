lemma sum_positive:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "a + b + c + d > 0"
proof -
  have "a + b > 0" using assms by simp
  then have "a + b + c > 0" using assms(3) by simp
  then have "a + b + c + d > 0" using assms(4) by simp
  thus ?thesis by simp
qed