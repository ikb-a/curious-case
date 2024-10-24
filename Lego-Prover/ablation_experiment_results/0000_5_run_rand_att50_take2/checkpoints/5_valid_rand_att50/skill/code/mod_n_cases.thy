lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "a mod n = 0 \<or> a mod n = 1 \<or> (\<exists>k. a mod n = k \<and> k < n)"
proof -
  have "a mod n < n" using assms by auto
  then show ?thesis
  proof (cases "a mod n = 0")
    case True
    then show ?thesis by auto
  next
    case False
    then have "a mod n \<noteq> 0" by simp
    then show ?thesis
    proof (cases "a mod n = 1")
      case True
      then show ?thesis by auto
    next
      case False
      then have "a mod n > 1" using `a mod n < n` by (metis Euclidean_Division.pos_mod_sign \<open>a mod int n \<noteq> 0\<close> assms linorder_neqE_linordered_idom mod_by_1 of_nat_0_less_iff zmod_trivial_iff)
      hence "a mod n > 1" by simp
      moreover have "a mod n < n" by (metis \<open>a mod int n < int n\<close>)
      ultimately show ?thesis by auto
    qed
  qed
qed