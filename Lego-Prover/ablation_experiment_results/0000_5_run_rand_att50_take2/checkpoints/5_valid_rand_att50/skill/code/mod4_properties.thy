lemma mod4_properties:
  fixes n :: nat
  shows "n mod 4 < 4"
proof -
  have "n mod 4 = 0 \<or> n mod 4 = 1 \<or> n mod 4 = 2 \<or> n mod 4 = 3" 
    by auto
  then show ?thesis by auto
qed