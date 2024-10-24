lemma floor_rational_relationship:
  fixes r :: real
  assumes "r = m / n" "n > 0"
  shows "floor r = m div n"