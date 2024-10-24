lemma mod_properties:
  fixes a b c :: int
  assumes "c > 0"
  shows "(a ≡ b (mod c)) ⟷ (a mod c = b mod c)"