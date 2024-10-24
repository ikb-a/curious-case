lemma threshold_for_eight:
  fixes r :: real
  assumes "floor (r + 57 / 100) = 8"
  shows "8 \<le> r + 57 / 100 \<and> r + 57 / 100 < 9"
proof -
  let ?x = "r + 57 / 100"
  have "floor ?x = 8" using assms by simp
  have "8 \<le> ?x" 
  proof -
    have "8 = floor ?x" by (simp add: `floor ?x = 8`)
    thus "8 \<le> ?x"
      by arith
  qed
  moreover have "?x < 9" 
  proof -
    have "9 = floor ?x + 1" by (metis ab_semigroup_add_class.add_ac(1) add.commute add.left_commute add_left_imp_eq add_right_imp_eq assms numeral_plus_numeral one_plus_numeral semiring_norm(4) semiring_norm(5) semiring_norm(8))
    thus "?x < 9" using `floor ?x = 8` 
      by arith
  qed
  ultimately show ?thesis by auto
qed