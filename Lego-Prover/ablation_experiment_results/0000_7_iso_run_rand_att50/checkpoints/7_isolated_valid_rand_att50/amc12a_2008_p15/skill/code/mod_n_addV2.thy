lemma mod_n_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = (a mod n + b mod n) mod n"
  by presburger