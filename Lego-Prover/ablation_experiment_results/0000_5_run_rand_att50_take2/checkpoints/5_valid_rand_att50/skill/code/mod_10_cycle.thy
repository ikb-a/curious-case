lemma mod_10_cycle:
  fixes a :: nat
  shows "a mod 10 = 0 \<or> a mod 10 = 1 \<or> a mod 10 = 2 \<or> a mod 10 = 3 \<or> a mod 10 = 4 \<or> a mod 10 = 5 \<or> a mod 10 = 6 \<or> a mod 10 = 7 \<or> a mod 10 = 8 \<or> a mod 10 = 9"
proof -
  have "a mod 10 < 10" by auto
  then show ?thesis
    by (cases "a mod 10") auto
qed