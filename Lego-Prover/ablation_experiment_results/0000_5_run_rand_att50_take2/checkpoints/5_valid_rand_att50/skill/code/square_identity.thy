lemma square_identity:
  fixes a b :: real
  shows "a^2 = b^2 \<longleftrightarrow> a = b \<or> a = -b"
proof -
  have "a^2 = b^2 \<longleftrightarrow> (a - b) * (a + b) = 0" 
    by sos
  then show ?thesis by auto
qed