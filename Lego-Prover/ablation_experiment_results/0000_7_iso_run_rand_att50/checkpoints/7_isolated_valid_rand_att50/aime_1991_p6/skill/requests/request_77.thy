lemma sum_floor_condition:
  fixes n m :: nat
  assumes "m = 546 - 73 * n"
  shows "m \<ge> 0 \<Longrightarrow> n \<le> 546 / 73"