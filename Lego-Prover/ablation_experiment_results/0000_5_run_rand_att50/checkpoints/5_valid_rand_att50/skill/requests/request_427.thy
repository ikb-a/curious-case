lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "\<exists> c. a + c < b"