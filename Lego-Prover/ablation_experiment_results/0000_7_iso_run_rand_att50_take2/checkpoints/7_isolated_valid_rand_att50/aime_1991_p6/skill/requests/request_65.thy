lemma bounds_on_r:
  fixes a b :: nat
  assumes "b = 546 - 73 * a" "a \<in> {7, 8}"
  shows "7.43 \<le> r \<and> r < 8.43"