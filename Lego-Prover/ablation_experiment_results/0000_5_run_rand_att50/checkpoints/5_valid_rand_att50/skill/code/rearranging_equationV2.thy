lemma rearranging_equation:
  fixes a b c :: real
  shows "b = a - c \<longleftrightarrow> a = b + c"
proof -
  {
    assume "b = a - c"
    then have "a = b + c" by (simp add: field_simps)
  }
  moreover
  {
    assume "a = b + c"
    then have "b = a - c" by (simp add: field_simps)
  }
  ultimately show "b = a - c \<longleftrightarrow> a = b + c" by blast
qed