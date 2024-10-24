lemma inequality_from_subtraction:
  fixes a b c :: real
  assumes "c > 0" "a < b * c"
  shows "a / c < b"
proof -
  have "a < b * c" using assms by simp
  then have "a / c < b * c / c" using assms by (simp add: field_split_simps)
  thus ?thesis by (metis assms(1) assms(2) mult_imp_div_pos_less)
qed