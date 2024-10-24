lemma mod_bound:
  fixes n :: nat
  assumes "n < k" "n mod m = r"
  shows "∃x. x < k ∧ x mod m = r"