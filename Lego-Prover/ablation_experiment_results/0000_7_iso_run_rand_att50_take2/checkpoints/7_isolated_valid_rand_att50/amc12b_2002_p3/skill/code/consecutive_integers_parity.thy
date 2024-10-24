lemma consecutive_integers_parity:
  fixes n :: nat
  assumes "n > 0"
  shows "even (n - 1) \<or> even (n - 2)"
proof -
  have "n = 1 + (n - 1)" by (metis Suc_diff_1 assms plus_1_eq_Suc)
  then have "n mod 2 = (1 + (n - 1) mod 2) mod 2" by presburger
  have "n mod 2 = 0 \<or> n mod 2 = 1" by auto
  then show ?thesis
  proof (cases "n mod 2 = 0")
    case True
    then have "even n" by auto
    then show ?thesis
    proof -
      have "n - 1 = n - 2 + 1" by (smt (verit) Nat.diff_add_assoc Nat.diff_cancel \<open>even n\<close> add.commute assms dvd_imp_le nat_1_add_1)
      then have "even (n - 2) \<or> odd (n - 2)" by (metis even_add odd_add)
      thus ?thesis by (auto simp add: True)
    qed
  next
    case False
    then have "odd n" by auto
    then show ?thesis
    proof -
      have "even (n - 1) \<or> odd (n - 1)" by (metis even_add odd_add)
      thus ?thesis using False by auto
    qed
  qed
qed