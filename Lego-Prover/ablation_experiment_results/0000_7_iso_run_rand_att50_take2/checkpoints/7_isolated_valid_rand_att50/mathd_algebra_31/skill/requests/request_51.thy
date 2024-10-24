lemma sqrt_property:
  fixes a b :: real
  assumes "0 \<le> a" "0 \<le> b" "sqrt a = b"
  shows "a = b^2"