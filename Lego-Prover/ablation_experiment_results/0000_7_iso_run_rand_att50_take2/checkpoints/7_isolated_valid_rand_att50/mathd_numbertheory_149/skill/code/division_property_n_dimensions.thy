lemma division_property_n_dimensions:
  fixes a b :: "real set"
  assumes "finite a" and "finite b" and "(\<forall>x\<in>a. x \<noteq> 0)" and "(\<forall>y\<in>b. y \<noteq> 0)"
  shows "(\<Sum>x\<in>a. 1 / x) = (\<Sum>x\<in>a. (1 / x))" 
  and "(\<Sum>y\<in>b. 1 / y) = (\<Sum>y\<in>b. (1 / y))"
  using assms
proof -
  show "(\<Sum>x\<in>a. 1 / x) = (\<Sum>x\<in>a. (1 / x))"
    by (metis sum.cong)
  show "(\<Sum>y\<in>b. 1 / y) = (\<Sum>y\<in>b. (1 / y))"
    by (metis sum.cong)
qed