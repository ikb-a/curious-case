lemma square_root_property:
  fixes a b :: real
  assumes "a = sqrt b" and "b >= 0"
  shows "a^2 = b"