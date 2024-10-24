lemma division_and_nonzero_multi:
  fixes a :: real
  assumes "a \<noteq> 0" "finite A"
  shows "(\<Sum>i\<in>A. b / a) = (\<Sum>i\<in>A. b) * (1 / a)"
proof -
  have "(\<Sum>i\<in>A. b / a) = (\<Sum>i\<in>A. b * (1 / a))" 
    by (simp add: sum.cong assms(1))
  also have "(\<Sum>i\<in>A. b * (1 / a)) = (\<Sum>i\<in>A. b) * (1 / a)" 
    by auto
  finally show ?thesis .
qed