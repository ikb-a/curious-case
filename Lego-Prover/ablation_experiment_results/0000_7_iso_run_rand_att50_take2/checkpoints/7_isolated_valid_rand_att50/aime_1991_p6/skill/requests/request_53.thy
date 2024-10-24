lemma integer_properties:
  fixes n m :: nat
  assumes "m = 546 - 73 * n" "m \<ge> 0"
  shows "n \<le> 7"