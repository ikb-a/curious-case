lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x = sqrt (max x 0)" 
    by (metis assms max.absorb_iff2 max.commute)
  then have "sqrt x >= 0" 
    by auto
  thus ?thesis by simp
qed