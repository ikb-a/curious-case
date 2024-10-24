lemma mod_expression:
  fixes n :: nat
  assumes "n mod m = r"
  shows "n = k * m + r" for some k :: nat