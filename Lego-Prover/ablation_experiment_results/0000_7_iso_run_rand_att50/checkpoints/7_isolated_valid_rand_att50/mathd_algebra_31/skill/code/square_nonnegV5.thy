lemma square_nonneg:
  fixes a :: real
  shows "a >= 0 \<Longrightarrow> a^2 >= 0"
proof -
  assume "a >= 0" 
  have "a^2 = a * a" by sos
  moreover have "0 <= a" by (simp add: `a >= 0`)
  ultimately show "a^2 >= 0" using mult_nonneg_nonneg by auto
qed