lemma mod_pow:
  fixes a n k :: nat
  assumes "n > 0"
  shows "(a^k) mod n = (a mod n)^k mod n"