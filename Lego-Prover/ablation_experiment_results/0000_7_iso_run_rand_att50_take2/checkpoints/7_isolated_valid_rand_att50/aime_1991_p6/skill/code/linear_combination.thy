lemma linear_combination:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "c * x = a * x + b"
  shows "b = c * x - a * x"
proof -
  have "c * x - a * x = b" using assms(2) by simp
  then show ?thesis by simp
qed