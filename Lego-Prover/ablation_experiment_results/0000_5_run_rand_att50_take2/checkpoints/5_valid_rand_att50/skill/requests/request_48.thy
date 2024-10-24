lemma isolate_variable:
  fixes a b c :: real
  assumes "a + b = c"
  shows "a = c - b"