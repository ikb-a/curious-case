lemma count_terms_contribution:
  fixes x y :: nat
  assumes "x + y = n" "x * a + y * b = total"
  shows "x = (total - y * b) / a"