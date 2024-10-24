lemma square_eq:
  fixes a b :: real
  shows "a^2 = b^2 \<longleftrightarrow> a = b \<or> a = -b"
proof -
  have "a^2 = b^2 \<longleftrightarrow> a^2 - b^2 = 0" by simp
  also have "... \<longleftrightarrow> (a - b) * (a + b) = 0" using squares_diff by simp
  finally show ?thesis by auto
qed