lemma positive_integer_properties:
  fixes n :: nat
  assumes "n > 0"
  shows "n - 1 > 0 \<and> n - 2 >= 0"