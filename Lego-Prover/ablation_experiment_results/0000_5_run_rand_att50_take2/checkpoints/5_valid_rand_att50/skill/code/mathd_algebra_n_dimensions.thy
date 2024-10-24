theorem mathd_algebra_n_dimensions:
  fixes a :: "real list" and b :: "real list"
  assumes "length a = n" "length b = n" "(\<Sum>i=0..n-1. a ! i + b ! i) = c" 
  shows "(\<Sum>i=0..n-1. b ! i) = c - (\<Sum>i=0..n-1. a ! i)"
proof -
  have sum_a: "(\<Sum>i=0..n-1. a ! i) + (\<Sum>i=0..n-1. b ! i) = c" using assms(3) by (metis sum.distrib)
  hence "(\<Sum>i=0..n-1. b ! i) = c - (\<Sum>i=0..n-1. a ! i)" by auto
  thus ?thesis by simp
qed