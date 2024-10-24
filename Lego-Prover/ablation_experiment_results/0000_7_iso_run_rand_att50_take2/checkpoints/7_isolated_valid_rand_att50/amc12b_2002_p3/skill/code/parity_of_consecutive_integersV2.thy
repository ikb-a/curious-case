lemma parity_of_consecutive_integers:
  fixes n :: nat
  shows "even n \<or> odd n"
proof -
  have "n mod 2 = 0 \<or> n mod 2 = 1" by auto
  thus ?thesis
  proof
    assume "n mod 2 = 0"
    hence "even n" by auto
    thus "even n \<or> odd n" by (simp)
  next
    assume "n mod 2 = 1"
    hence "odd n" by auto
    thus "even n \<or> odd n" by (simp)
  qed
qed