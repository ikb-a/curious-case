lemma division_property_extended:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "(b / a) * a = b \<and> (c / a) * a = c"
proof -
  have "b / a * a = b" using division_property[OF assms] by auto
  have "c / a * a = c" using division_property[OF assms] by auto
  then show ?thesis by (auto simp add: assms)
qed