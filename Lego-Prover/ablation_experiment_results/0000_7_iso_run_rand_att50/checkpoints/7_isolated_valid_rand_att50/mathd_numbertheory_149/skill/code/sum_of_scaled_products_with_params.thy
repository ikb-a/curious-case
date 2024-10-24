lemma sum_of_scaled_products_with_params:
  fixes A :: "'a set" and x y z :: real
  assumes "x > 0" "finite A"
  shows "(\<Sum>i\<in>A. (y * x + z)) = (\<Sum>i\<in>A. y * x) + (\<Sum>i\<in>A. z)"
proof -
  have "(\<Sum>i\<in>A. (y * x + z)) = (\<Sum>i\<in>A. y * x) + (\<Sum>i\<in>A. z)" 
    by (auto simp: field_simps)
  then show ?thesis by simp
qed