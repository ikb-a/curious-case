lemma sum_of_squares_non_negative:
  fixes x y :: real
  shows "0 \<le> x^2 + y^2"
proof -
  have "0 \<le> x^2" and "0 \<le> y^2" by (metis non_negative_squares)+
  thus ?thesis by (simp add: add_nonneg_nonneg)
qed