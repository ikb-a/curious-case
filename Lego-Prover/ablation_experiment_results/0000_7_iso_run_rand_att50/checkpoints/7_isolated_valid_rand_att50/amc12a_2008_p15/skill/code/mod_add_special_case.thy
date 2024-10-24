lemma mod_add_special_case:
  fixes a b :: nat
  shows "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10"
  using mod_add_general by simp