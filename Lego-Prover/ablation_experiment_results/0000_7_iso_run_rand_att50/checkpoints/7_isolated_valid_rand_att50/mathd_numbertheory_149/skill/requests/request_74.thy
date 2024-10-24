lemma express_in_terms_of_k:
  fixes k m :: nat
  assumes "N = 8k + 5" "k = 3m + 2"
  shows "N = 24m + 21"