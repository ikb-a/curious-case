lemma mod_arithmetic:
  fixes a b c d :: nat
  assumes "a > 0" "c > 0"
  shows "(b + a) mod c = (b mod c + a mod c) mod c"