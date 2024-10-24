lemma linear_equation:
  fixes a b :: real
  assumes "m * a + n * b = c"
    and "a = x"
  shows "n * b = c - m * x"
proof -
  have "m * x + n * b = c" using assms by simp
  then show ?thesis by simp
qed