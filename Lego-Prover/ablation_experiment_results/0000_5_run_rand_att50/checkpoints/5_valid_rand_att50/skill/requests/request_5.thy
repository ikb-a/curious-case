lemma valid_operations:
  fixes x y z :: real
  assumes "x = y"
  shows "x + z = y + z"