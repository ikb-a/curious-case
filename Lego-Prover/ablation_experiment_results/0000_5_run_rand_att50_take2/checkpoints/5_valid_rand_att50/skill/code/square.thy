lemma square:
  fixes a b :: real
  shows "a^2 = b^2 \<longleftrightarrow> a = b \<or> a = -b"
proof -
  have "a^2 - b^2 = (a - b) * (a + b)" by sos
  thus ?thesis
  proof (cases "a^2 = b^2")
    case True
    then have "0 = (a - b) * (a + b)" by sos
    hence "a - b = 0 \<or> a + b = 0" by (simp add: mult_eq_0_iff)
    thus ?thesis by auto
  next
    case False
    then show ?thesis by auto
  qed
qed