lemma count_elements_in_range:
  fixes a b :: nat
  shows "card {a::nat ..< b} = b - a"
  by auto