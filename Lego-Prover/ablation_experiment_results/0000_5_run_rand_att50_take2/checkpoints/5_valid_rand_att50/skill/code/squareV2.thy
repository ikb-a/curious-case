lemma square:
  fixes a b :: real
  shows "a^2 = b^2 \<longleftrightarrow> a = b \<or> a = -b"
proof -
  have "a^2 = b^2 \<longleftrightarrow> a^2 - b^2 = 0" by simp
  also have "... \<longleftrightarrow> (a - b) * (a + b) = 0" by sos
  also have "... \<longleftrightarrow> a - b = 0 \<or> a + b = 0" by (simp add: mult_eq_0_iff)
  finally show ?thesis by auto
qed