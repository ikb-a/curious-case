lemma rearrange_equation_n_dimensions:
  fixes x y :: "real set"
  assumes "finite x" "finite y" 
    and "(\<Sum>i\<in>x. i) + 2/(\<Sum>i\<in>x. i) = (\<Sum>j\<in>y. j) + 2/(\<Sum>j\<in>y. j)"
  shows "(\<Sum>i\<in>x. i) - (\<Sum>j\<in>y. j) = (2/(\<Sum>j\<in>y. j) - 2/(\<Sum>i\<in>x. i))"
proof -
  have "(\<Sum>i\<in>x. i) + 2/(\<Sum>i\<in>x. i) - ((\<Sum>j\<in>y. j) + 2/(\<Sum>j\<in>y. j)) = 0" using assms by simp
  then show ?thesis by simp
qed