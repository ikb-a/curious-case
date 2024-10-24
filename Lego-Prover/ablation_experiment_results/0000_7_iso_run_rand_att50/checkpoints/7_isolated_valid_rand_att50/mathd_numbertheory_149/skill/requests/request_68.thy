lemma mod_add:
  fixes a b c :: nat
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"