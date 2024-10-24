lemma sum_natural_numbers:
  fixes n :: nat
  shows "(\<Sum>k=1..n. k) = n * (n + 1) div 2"
proof (induction n)
  case 0
  then show ?case by simp
next
  case (Suc n)
  then show ?case by auto
qed