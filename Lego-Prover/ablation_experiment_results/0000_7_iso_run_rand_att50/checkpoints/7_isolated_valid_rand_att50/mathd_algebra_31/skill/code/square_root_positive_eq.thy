lemma square_root_positive_eq:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a = sqrt b \<longleftrightarrow> a = b"
proof -
  have "sqrt a = sqrt b \<Longrightarrow> a = b"
    by auto
  moreover
  have "a = b \<Longrightarrow> sqrt a = sqrt b" by simp
  ultimately show ?thesis by (metis)
qed