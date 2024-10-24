lemma square_nonneg:
  fixes a :: real
  shows "a >= 0 \<Longrightarrow> a^2 >= 0"
proof -
  assume "a >= 0"  
  have "a^2 = a * a" by sos  
  also have "... >= 0" using `a >= 0` by (simp add: mult_nonneg_nonneg)  
  finally show "a^2 >= 0" by simp  
qed