lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"