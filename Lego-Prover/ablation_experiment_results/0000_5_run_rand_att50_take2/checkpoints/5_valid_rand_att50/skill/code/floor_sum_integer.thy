lemma floor_sum_integer:
  fixes r :: real and n :: nat
  assumes "n \<in> {19::nat..<92}"
  shows "floor (r + n / 100) \<in> {floor r, floor r + 1}"
proof -
  let ?m = "floor r"
  have "r + n / 100 \<ge> ?m" 
  proof -
    have "n / 100 < 1" 
      using assms by (auto simp: lessThan_iff)
    thus "r + n / 100 \<ge> ?m" 
      using `n \<in> {19::nat..<92}` by arith
  qed
  moreover have "r + n / 100 < ?m + 1 + 1" 
  proof -
    have "n / 100 < 1" 
      using assms by (auto simp: lessThan_iff)
    thus "r + n / 100 < ?m + 1 + 1" 
      using `n \<in> {19::nat..<92}` by arith
  qed
  ultimately show ?thesis 
  proof (cases "r + n / 100 < ?m + 1")
    case True
    then show ?thesis 
      by (smt (verit) \<open>real_of_int \<lfloor>r\<rfloor> \<le> r + real n / 100\<close> floor_eq_iff insertCI of_int_1 of_int_add)
  next
    case False
    then show ?thesis 
      by (smt (verit) \<open>r + real n / 100 < real_of_int (\<lfloor>r\<rfloor> + 1 + 1)\<close> floor_eq_iff insertI1 insertI2 of_int_1 of_int_add verit_comp_simplify1(3))
  qed
qed