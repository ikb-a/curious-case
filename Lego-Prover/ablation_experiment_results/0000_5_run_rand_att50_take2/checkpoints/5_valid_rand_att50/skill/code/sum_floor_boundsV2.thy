lemma sum_floor_bounds:
  fixes r :: real and k :: nat
  assumes "19 \<le> k" "k \<le> 91"
  shows "floor (r + k / 100) \<in> {floor r, floor r + 1}"
proof -
  let ?m = "floor r"
  have "r + k / 100 \<ge> ?m" 
  proof -
    have "k / 100 < 1" 
      using assms by auto
    thus "r + k / 100 \<ge> ?m" 
      using `k \<ge> 19` by arith
  qed
  moreover have "r + k / 100 < ?m + 2" 
  proof -
    have "k / 100 < 1" 
      using assms by auto
    thus "r + k / 100 < ?m + 2" 
      using `k \<le> 91` by arith
  qed
  ultimately show ?thesis 
  proof (cases "r + k / 100 < ?m + 1")
    case True
    then show ?thesis 
      by (smt (verit) `?m \<le> r + k / 100` floor_eq_iff insertCI of_int_1 of_int_add)
  next
    case False
    then show ?thesis 
      by (smt (verit) `r + k / 100 < ?m + 2` floor_eq_iff insertI1 insertI2 of_int_1 of_int_add)
  qed
qed