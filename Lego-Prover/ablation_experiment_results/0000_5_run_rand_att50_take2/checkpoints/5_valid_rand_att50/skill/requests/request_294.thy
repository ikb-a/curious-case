lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a > 0" "b < a" "c < a"
  shows "(b + c) mod a = (b mod a + c mod a) mod a"