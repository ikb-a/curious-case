lemma solve_linear_congruence:
  fixes a b m :: nat
  assumes "a > 0" "m > 0"
  shows "(\<exists>x. x mod m = b) \<longleftrightarrow> (b < m)"
proof
  assume "b < m"
  then have "b mod m = b" by (simp add: mod_less)
  then show "\<exists>x. x mod m = b" 
    by (rule_tac x=b in exI) auto
next
  assume "\<exists>x. x mod m = b"
  then obtain x where "x mod m = b" by auto
  then have "0 \<le> b" by auto
  moreover have "b < m" 
  proof -
    have "x mod m < m" by (metis \<open>x mod m = b\<close> assms(2) dual_order.strict_trans2 mod_less_divisor order_refl)
    thus ?thesis using `x mod m = b` by simp
  qed
  ultimately show "b < m" by auto
qed