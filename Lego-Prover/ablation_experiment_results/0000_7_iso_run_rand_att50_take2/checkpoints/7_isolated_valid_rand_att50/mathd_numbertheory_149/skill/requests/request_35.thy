lemma divisibility_properties:
  fixes a b m :: nat
  assumes "a mod m = b" "b < m"
  shows "a = k * m + b" for some integer k