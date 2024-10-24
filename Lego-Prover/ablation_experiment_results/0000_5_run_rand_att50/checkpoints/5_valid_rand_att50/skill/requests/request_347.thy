lemma sqrt_manipulation:
  fixes a b :: real
  assumes "a = 13 - sqrt 131"
  shows "a^2 = 169 - 26 * sqrt 131 + 131"