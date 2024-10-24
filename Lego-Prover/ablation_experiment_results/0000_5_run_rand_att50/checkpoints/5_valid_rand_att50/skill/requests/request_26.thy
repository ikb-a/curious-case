lemma divisibility_properties:
  fixes a b :: nat
  assumes "a mod b = 0"
  shows "a = b * k" for some nat k