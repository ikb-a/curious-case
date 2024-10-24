lemma mod_properties:
  fixes a b c :: nat
  assumes "a > 0" "b > 0" "c > 0"
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"