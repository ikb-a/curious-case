lemma sum_of_products_multi:
  fixes x a :: real
  assumes "x > 0" "finite A" "finite B" "b = a * x"
  shows "(\<Sum>i\<in>A. \<Sum>j\<in>B. b) = (\<Sum>i\<in>A. \<Sum>j\<in>B. a * x)"
proof -
  have "(\<Sum>i\<in>A. \<Sum>j\<in>B. b) = (\<Sum>i\<in>A. \<Sum>j\<in>B. a * x)" using assms(4) by simp
  then show ?thesis by (simp add: sum.reindex)
qed