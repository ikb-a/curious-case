lemma square_eq_sym:
  fixes a b :: real
  assumes "a^2 = b^2"
  shows "a = b \<or> a = -b"
proof -
  have "a^2 - b^2 = 0" using assms by simp
  then have "0 = (a - b) * (a + b)" by (simp add: squares_diff)
  hence "a - b = 0 \<or> a + b = 0" by auto
  thus ?thesis by auto
qed