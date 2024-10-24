lemma linear_equation_substitution:
  fixes a b c d :: real
  assumes "3 * a + 2 * b = c" and "a = d"
  shows "2 * b = c - 3 * d"
proof -
  have "3 * a + 2 * b = c" using assms(1) by simp
  then have "3 * d + 2 * b = c" using assms(2) by simp
  hence "2 * b = c - 3 * d" by simp
  thus ?thesis by simp
qed