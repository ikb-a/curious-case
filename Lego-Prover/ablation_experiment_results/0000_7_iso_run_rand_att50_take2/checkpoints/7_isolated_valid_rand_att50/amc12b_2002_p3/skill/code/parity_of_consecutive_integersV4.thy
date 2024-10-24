lemma parity_of_consecutive_integers:
  fixes n :: nat
  shows "even n \<or> odd n"
proof -
  have "n = 2 * (n div 2) + (n mod 2)" by auto
  then show "even n \<or> odd n"
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