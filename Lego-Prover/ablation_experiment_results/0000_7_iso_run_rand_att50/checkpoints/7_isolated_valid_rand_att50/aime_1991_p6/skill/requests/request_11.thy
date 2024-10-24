lemma sum_of_integers:
  fixes a b :: nat
  assumes "a ≤ b"
  shows "∑ k = a..b. k = (b * (b + 1) div 2) - (a * (a - 1) div 2)"