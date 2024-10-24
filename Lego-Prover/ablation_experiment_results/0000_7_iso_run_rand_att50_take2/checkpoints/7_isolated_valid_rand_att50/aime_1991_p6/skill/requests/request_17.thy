lemma average_and_remainder:
  fixes n :: nat
  assumes "n > 0"
  shows "(\<Sum> i = 1..n. i) = n * (n + 1) div 2"