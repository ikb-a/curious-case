lemma sum_of_squares_greater_than_zero:
  fixes a b :: real
  assumes "a^2 + b^2 > 0"
  shows "a \<noteq> 0 \<or> b \<noteq> 0"
proof -
  have "a^2 + b^2 >= 0" by (simp add: sum_of_non_negative_squares)
  then show ?thesis
  proof (cases "a = 0")
    case True
    then have "b^2 > 0" using assms by simp
    thus ?thesis by simp
  next
    case False
    then have "a^2 > 0" using assms by simp
    thus ?thesis by simp
  qed
qed