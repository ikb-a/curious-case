lemma sum_of_weights_general:
  fixes A :: "'a set" and a b x c :: real
  assumes "x > 0" "finite A" "b = a * x"
  shows "(\<Sum>i\<in>A. b * c) = (\<Sum>i\<in>A. a * x * c)" using sum_of_products assms by simp