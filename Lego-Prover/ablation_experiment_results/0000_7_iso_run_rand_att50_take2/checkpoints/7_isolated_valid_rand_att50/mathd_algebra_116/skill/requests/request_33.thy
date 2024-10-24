lemma combine_terms:
  fixes a b c d :: real
  assumes "denom1 > 0" "denom2 > 0"
  shows "a/denom1 + b/denom2 = (a * denom2 + b * denom1) / (denom1 * denom2)"