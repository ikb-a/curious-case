lemma x_non_negative:
  fixes a x :: nat
  assumes "0 < a" "a \<le> 7"
  shows "546 - 73 * a \<ge> 0"