lemma square_eq_extended:
  fixes a b :: real
  shows "a^2 = b^2 \<longleftrightarrow> a = b \<or> a = -b"
proof -
  have "a^2 - b^2 = (a - b) * (a + b)" by sos
  thus ?thesis by auto
qed