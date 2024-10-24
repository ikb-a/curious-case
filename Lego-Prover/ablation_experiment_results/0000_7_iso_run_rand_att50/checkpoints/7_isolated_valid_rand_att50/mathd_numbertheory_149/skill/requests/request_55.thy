lemma integer_bounds:
  fixes m :: nat
  assumes "a < b"
  shows "\<exists> k. a + k < b"