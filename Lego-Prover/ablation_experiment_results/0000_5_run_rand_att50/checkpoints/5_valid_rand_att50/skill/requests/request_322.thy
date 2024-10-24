lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a mod b = c"
  shows "a = b * k + c" for some k :: nat