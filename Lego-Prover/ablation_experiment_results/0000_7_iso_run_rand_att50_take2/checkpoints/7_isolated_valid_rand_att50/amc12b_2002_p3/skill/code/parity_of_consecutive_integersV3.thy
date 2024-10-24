lemma parity_of_consecutive_integers:
  fixes n :: nat
  shows "even n \<or> odd n"
proof -
  have "n mod 2 = 0 \<or> n mod 2 = 1" by auto
  then show ?thesis
  proof (cases "n mod 2 = 0")
    case True
    then have "even n" by auto
    thus ?thesis by (simp add: True)
  next
    case False
    then have "odd n" by auto
    thus ?thesis by (simp add: False)
  qed
qed