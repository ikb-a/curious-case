lemma mod_properties:
  fixes a b m :: nat
  assumes "a mod m = b"
  shows "a + k * m mod m = b" for any integer k