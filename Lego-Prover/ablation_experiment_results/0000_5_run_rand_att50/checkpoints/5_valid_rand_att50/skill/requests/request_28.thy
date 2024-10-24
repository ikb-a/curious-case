lemma sum_range:
  fixes a b :: nat
  shows "(\<Sum>k = a..b. k) = (b * (b + 1) div 2) - (a * (a - 1) div 2)"