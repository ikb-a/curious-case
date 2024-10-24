lemma integer_divisibility:
  fixes a b :: int
  assumes "b > 0" "a mod b = 0"
  shows "∃k. a = k * b"