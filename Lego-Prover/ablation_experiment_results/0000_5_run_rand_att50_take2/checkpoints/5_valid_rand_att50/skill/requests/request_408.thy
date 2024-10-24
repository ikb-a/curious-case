lemma square_root_properties:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "sqrt a = sqrt b"