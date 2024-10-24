lemma sum_of_products_multi:
  fixes x :: real
    and a :: "nat \<Rightarrow> real"
    and b :: "nat \<Rightarrow> real"
    and A :: "nat set"
  assumes "x > 0" "finite A" "\<forall>i\<in>A. b i = a i * x"
  shows "(\<Sum>i\<in>A. b i) = (\<Sum>i\<in>A. a i * x)"
proof -
  have "(\<Sum>i\<in>A. b i) = (\<Sum>i\<in>A. a i * x)" using assms(3) by simp
  then show ?thesis by simp
qed