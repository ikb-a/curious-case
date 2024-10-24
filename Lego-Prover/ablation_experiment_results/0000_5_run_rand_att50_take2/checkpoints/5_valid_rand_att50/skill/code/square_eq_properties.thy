lemma square_eq_properties:
  fixes a b c :: real
  assumes "a = b" "b = c"
  shows "a^2 = b^2 \<and> b^2 = c^2 \<and> a^2 = c^2"
proof -
  have "a^2 = b^2" using square_eq_general assms(1) by simp
  then have "b^2 = c^2" using square_eq_general assms(2) by blast
  then have "a^2 = c^2" using square_eq_general assms(1) assms(2) by blast
  thus ?thesis by (auto simp: assms)
qed