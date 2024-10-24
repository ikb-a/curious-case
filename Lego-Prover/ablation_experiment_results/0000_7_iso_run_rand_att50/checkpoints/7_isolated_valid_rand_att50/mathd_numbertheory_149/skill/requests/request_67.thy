lemma modular_arithmetic:
  fixes a b c :: nat
  assumes "a mod b = c"
  shows "a = b * k + c" for some integer k