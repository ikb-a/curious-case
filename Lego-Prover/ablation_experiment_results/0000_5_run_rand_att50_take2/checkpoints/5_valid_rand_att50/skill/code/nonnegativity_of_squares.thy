lemma nonnegativity_of_squares:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show "a^2 >= 0" by auto
  have "b^2 = b * b" by sos
  then show "b^2 >= 0" by auto
qed