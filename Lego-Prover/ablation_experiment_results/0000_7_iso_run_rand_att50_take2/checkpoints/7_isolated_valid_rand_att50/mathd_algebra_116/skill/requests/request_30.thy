lemma simplify_square_root:
  fixes a b :: real
  assumes "a = 13" "b = sqrt 131"
  shows "(2 * (a - b)^2) = (2 * a^2 - 4 * a * b + 2 * b^2)"