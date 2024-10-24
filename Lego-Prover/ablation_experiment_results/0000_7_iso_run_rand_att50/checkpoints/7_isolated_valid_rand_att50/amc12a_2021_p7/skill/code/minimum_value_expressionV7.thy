lemma minimum_value_expression:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "0 \<le> (x * y - 1)^2" by (simp add: power2_eq_square)
  have "0 \<le> (x + y)^2" by (simp add: power2_eq_square)
  let ?expr = "(x * y - 1)^2 + (x + y)^2"
  have "?expr >= 0 + 0" 
    by (simp add: add_nonneg_nonneg)
  have "?expr = 0" if "x * y = 1" and "x + y = 0" 
    for x y :: real using that
    by sos
  have "?expr = 1" if "x * y = 1" and "x + y = 0" 
    for x y :: real using that
    by sos
  then have "1 \<le> ?expr" 
    by sos
  thus ?thesis 
    by auto
qed