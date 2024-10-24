lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "a mod n \<in> {0..<n}"
proof -
  have "a mod n < n" by (simp add: assms)
  moreover have "a mod n \<ge> 0" by (simp add: assms)
  ultimately show ?thesis 
    by auto
qed