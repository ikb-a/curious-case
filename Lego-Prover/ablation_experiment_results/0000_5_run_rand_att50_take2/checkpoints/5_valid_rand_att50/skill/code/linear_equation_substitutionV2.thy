lemma linear_equation_substitution:
  fixes a b c d :: real
  assumes "3*a + 2*b = c" "a = d"
  shows "b = (c - 3*d) / 2"
proof -
  have "3*a + 2*b = c" using assms(1) by simp
  then have "3*d + 2*b = c" using assms(2) by simp
  then have "2*b = c - 3*d" by simp
  then show ?thesis by (simp add: field_simps)
qed