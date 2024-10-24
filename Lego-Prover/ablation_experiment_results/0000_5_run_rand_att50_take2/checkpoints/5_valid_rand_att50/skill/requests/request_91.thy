lemma average_sum:
  fixes n :: nat and s :: nat
  assumes "s = sum f {0..n-1}"
  shows "s / n = average f {0..n-1}"