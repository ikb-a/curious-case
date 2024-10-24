lemma chinese_remainder_theorem:
  fixes a b m n :: nat
  assumes "coprime m n"
  shows "\<exists> x. x mod m = a \<and> x mod n = b"