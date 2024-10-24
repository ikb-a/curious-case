lemma parity_of_consecutive_integers:
  fixes n :: nat
  shows "even n \<or> odd n"
proof -
  have "n mod 2 = 0 \<or> n mod 2 = 1" by auto
  thus ?thesis
  proof (cases "n mod 2 = 0")
    case True
    then show ?thesis by auto
  next
    case False
    then show ?thesis by auto
  qed
qed