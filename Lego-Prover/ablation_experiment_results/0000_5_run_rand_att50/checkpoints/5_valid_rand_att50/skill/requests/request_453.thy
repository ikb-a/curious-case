lemma mod_arithmetic:
  fixes a b m n :: nat
  assumes "a mod m = b"
  shows "(c * a) mod m = (c * b) mod m"