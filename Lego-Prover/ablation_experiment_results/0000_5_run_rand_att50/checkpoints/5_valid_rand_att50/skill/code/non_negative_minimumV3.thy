lemma non_negative_minimum:
  fixes a b c :: real
  assumes "a = x^2" "b = y^2" "c = x^2 * y^2"
  shows "a >= 0 \<and> b >= 0 \<and> c >= 0 \<Longrightarrow> a + b + c + 1 >= 1"
proof -
  assume "a >= 0 \<and> b >= 0 \<and> c >= 0"
  then have "a + b + c >= 0 + 0 + 0" by simp
  moreover have "a + b + c + 1 = (a + b + c) + 1" by simp
  ultimately show "a + b + c + 1 >= 1" by simp
qed