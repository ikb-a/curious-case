lemma mod4_and_negatives:
  fixes a :: int
  assumes "a < 0"
  shows "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3"
proof -
  have "a mod 4 = (a + 4 * (if a mod 4 < 0 then 1 else 0)) mod 4" 
    by auto
  then show ?thesis 
    using mod4_properties by auto
qed