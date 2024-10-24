theorem mathd_algebra_109_multi_dim:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0 \<Longrightarrow> \<forall>k. b = k * 0"
proof -
  assume "b = 0"
  then have "b = 0" by simp
  then show "\<forall>k. b = k * 0" by auto
qed