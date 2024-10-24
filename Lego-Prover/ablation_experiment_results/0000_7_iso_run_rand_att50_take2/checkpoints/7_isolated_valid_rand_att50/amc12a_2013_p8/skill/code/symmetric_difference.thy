lemma symmetric_difference:
  fixes a b :: real
  shows "a - b = (2/b - 2/a) \<longleftrightarrow> a + 2/a = b + 2/b"
proof -
  {
    assume "a - b = (2/b - 2/a)"
    then have "a + 2/a = b + 2/b" by (simp add: field_simps)
  }
  moreover {
    assume "a + 2/a = b + 2/b"
    hence "a - b = (2/b - 2/a)" by (simp add: field_simps)
  }
  ultimately show "a - b = (2/b - 2/a) \<longleftrightarrow> a + 2/a = b + 2/b" by blast
qed