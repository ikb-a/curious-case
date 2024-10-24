lemma linear_congruence:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0"
  shows "a mod m = b mod m ⟷ (a - b) mod m = 0"