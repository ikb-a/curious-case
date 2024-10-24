lemma sum_floor_bounds:
  fixes r :: real and k :: nat
  assumes "19 \<le> k" "k \<le> 91"
  shows "floor (r + k / 100) \<in> {floor r, floor r + 1}"
proof -
  let ?m = "floor r"
  have "r + k / 100 \<ge> ?m" 
  proof -
    have "k / 100 < 1" 
      using assms by (auto simp: lessThan_iff)
    thus "r + k / 100 \<ge> ?m" 
      using `k \<ge> 19` by arith
  qed
  moreover have "r + k / 100 < ?m + 1 + 1" 
  proof -
    have "k / 100 < 1" 
      using assms by (auto simp: lessThan_iff)
    thus "r + k / 100 < ?m + 1 + 1" 
      using `k \<le> 91` by arith
  qed
  ultimately show ?thesis 
  proof (cases "r + k / 100 < ?m + 1")
    case True
    then show ?thesis 
      by (smt (verit) \<open>real_of_int \<lfloor>r\<rfloor> \<le> r + real k / 100\<close> floor_eq_iff insertCI of_int_1 of_int_add)
  next
    case False
    then show ?thesis 
      by (smt (verit) \<open>r + real k / 100 < real_of_int (\<lfloor>r\<rfloor> + 1 + 1)\<close> floor_eq_iff insertI1 insertI2 of_int_1 of_int_add verit_comp_simplify1(3))
  qed
qed