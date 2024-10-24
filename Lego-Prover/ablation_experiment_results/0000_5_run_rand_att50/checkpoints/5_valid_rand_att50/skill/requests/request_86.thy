lemma periodicity_mod:
  fixes a :: nat and m :: nat
  assumes "m > 0"
  shows "∃k. ∀n. (a^n) mod m = (a^(n + k)) mod m"