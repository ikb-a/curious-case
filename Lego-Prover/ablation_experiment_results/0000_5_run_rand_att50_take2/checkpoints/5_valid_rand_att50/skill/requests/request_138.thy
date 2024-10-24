lemma mod_multiply:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(c * a) mod m = (c * b) mod m"