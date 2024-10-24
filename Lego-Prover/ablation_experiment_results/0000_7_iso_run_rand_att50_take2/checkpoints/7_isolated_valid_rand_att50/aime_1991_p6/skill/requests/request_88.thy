lemma floor_sum_consecutive:
  fixes r :: real and k :: nat
  assumes "k \<ge> 19" and "k \<le> 91"
  shows "floor (r + (k + 1)/100) - floor (r + k/100) \<in {0, 1}"