lemma product_of_non_zero_and_inverse:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) * b * (1 / b) = 1"
proof -
  have "a * (1 / a) = 1" using non_zero_times_inverse[of a] assms(1) by simp
  then have "a * (1 / a) * b * (1 / b) = 1 * (b * (1 / b))" by simp
  also have "... = 1 * 1" using non_zero_times_inverse[of b] assms(2) by simp
  finally show ?thesis by simp
qed