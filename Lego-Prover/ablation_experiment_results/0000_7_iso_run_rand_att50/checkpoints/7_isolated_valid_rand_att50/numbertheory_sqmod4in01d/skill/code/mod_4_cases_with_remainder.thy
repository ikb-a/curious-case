lemma mod_4_cases_with_remainder:
  fixes n :: nat
  shows "n mod 4 = (0::nat) \<or> n mod 4 = 1 \<or> n mod 4 = 2 \<or> n mod 4 = 3"
proof -
  have "n mod 4 < 4" by auto
  moreover have "0 \<le> n mod 4" by auto
  ultimately show ?thesis by auto
qed