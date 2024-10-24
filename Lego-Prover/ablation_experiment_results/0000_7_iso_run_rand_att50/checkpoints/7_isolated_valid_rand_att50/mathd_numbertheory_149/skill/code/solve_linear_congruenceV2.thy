lemma solve_linear_congruence:
  fixes a b m :: nat
  assumes "a > 0" "m > 0"
  shows "(\<exists>x. x mod m = b) \<longleftrightarrow> (b < m)"
proof -
  {
    assume "b < m"
    then have "b mod m = b" by (simp add: mod_less)
    hence "\<exists>x. x mod m = b" 
      by auto
  }
  moreover
  {
    assume "\<exists>x. x mod m = b"
    then obtain x where "x mod m = b" by auto
    then have "b < m" 
      using assms by auto
  }
  ultimately show ?thesis by auto
qed