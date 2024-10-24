lemma sum_partition:
  fixes n :: nat
  fixes x y a b c :: real
  assumes "x + y = n"
  shows "x * a + y * b = c \<Longrightarrow> (x + y) * a + y * (b - a) = c"
proof -
  assume "x * a + y * b = c"
  then have "y * b = c - x * a" by (simp add: algebra_simps)
  then have "(x + y) * a + y * (b - a) = (x + y) * a + y * b - y * a" 
    by (simp add: algebra_simps)
  also have "... = (x + y) * a + (c - x * a) - y * a"
    by (metis \<open>y * b = c - x * a\<close> add.commute add_cancel_right_left add_diff_eq cancel_comm_monoid_add_class.diff_cancel group_cancel.sub1 mult.commute right_diff_distrib)
  finally show ?thesis
    by sos
qed