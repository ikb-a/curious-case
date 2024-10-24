lemma equations_setup:
  fixes a b n
  assumes "a + b = 73" and "a * n + b * (n + 1) = 546"
  shows "b = 73 - a" and "a * n + (73 - a) * (n + 1) = 546"