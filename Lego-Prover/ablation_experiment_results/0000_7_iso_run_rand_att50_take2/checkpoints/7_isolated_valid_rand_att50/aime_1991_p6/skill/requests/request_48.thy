lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a <= b" "b <= c"
  shows "a <= c"