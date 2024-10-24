lemma inequality_from_subtraction_multi:
  fixes a b c :: real
  assumes "c > 0" "finite A" "\<forall>x \<in> A. a < b * c"
  shows "\<forall>x \<in> A. a / c < b"
proof -
  have "\<forall>x \<in> A. a < b * c" using assms(2) assms(3) by auto
  then have "\<forall>x \<in> A. a / c < b * c / c" using assms(1) by (simp add: field_split_simps)
  thus ?thesis by (metis assms(1) assms(3) mult_imp_div_pos_less)
qed