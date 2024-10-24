lemma average_value_extended:
  fixes total :: real and count :: nat and scale :: real
  assumes "count > 0" and "scale > 0"
  shows "total / (scale * real count) = (total / scale) / (real_of_nat count)"
  using assms by (simp add: field_simps)