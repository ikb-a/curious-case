lemma square_nonneg:
  fixes a :: real
  shows "a >= 0 \<Longrightarrow> a^2 >= 0"
proof -
  assume "a >= 0"  
  have "a^2 = a * a" by sos  
  then show "a^2 >= 0" using `a >= 0` by (metis mult_nonneg_nonneg)  
qed