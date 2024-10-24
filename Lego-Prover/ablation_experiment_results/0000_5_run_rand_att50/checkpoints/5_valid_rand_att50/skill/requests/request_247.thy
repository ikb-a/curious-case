lemma mod_add:
  fixes a b c d :: nat
  assumes "a mod b = c" "d mod b = e"
  shows "(a + d) mod b = (c + e) mod b"