lemma sum_product_of_constants:
  fixes a b :: real
  assumes "x > 0" "finite A" "finite B"
  shows "(\<Sum>i\<in>A. \<Sum>j\<in>B. a * b) = card A * card B * a * b"
proof -
  have "(\<Sum>i\<in>A. \<Sum>j\<in>B. a * b) = (\<Sum>i\<in>A. card B * (a * b))" by (simp add: sum_constant)
  also have "... = card A * card B * a * b" by (simp add: sum_constant)
  finally show ?thesis by auto
qed