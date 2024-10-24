lemma bounds_on_sum:
  fixes n :: nat
  assumes "x + y = n" and "x, y \<ge> 0"
  shows "0 \<le> x \<and> 0 \<le> y"