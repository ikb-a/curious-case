lemma arithmetic_operations:
  fixes x y z :: real
  assumes "x + y = z" "x = 12" "y = 0"
  shows "z = 12"