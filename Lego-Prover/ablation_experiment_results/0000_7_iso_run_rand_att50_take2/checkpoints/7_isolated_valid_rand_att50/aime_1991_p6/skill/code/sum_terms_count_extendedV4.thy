lemma sum_terms_count_extended:
  fixes n m :: nat
  assumes "n + m = 91 - 19 + 1" 
  shows "n + m = 73"
  and "m = 73 - n"
proof -
  show "n + m = 73" using assms by (simp)
  show "m = 73 - n" by (metis \<open>n + m = 73\<close> add_diff_cancel_left')
qed