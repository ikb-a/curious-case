lemma non_zero_times_inverse_generalized:
  fixes a :: "real set"
  assumes "\<forall>x \<in> a. x \<noteq> 0"
  shows "\<forall>x \<in> a. x * (1 / x) = 1"
proof -
  {
    fix x
    assume "x \<in> a"
    then have "x \<noteq> 0" using assms by auto
    have "x * (1 / x) = 1" by (metis \<open>x \<noteq> 0\<close> divide_cancel_right nonzero_mult_div_cancel_left)
    hence "x * (1 / x) = 1" by auto
  }
  thus ?thesis by auto
qed