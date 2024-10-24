lemma square_root_diff:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "\<lbrakk> a^2 + b^2 = c^2; a \<le> b \<rbrakk> \<Longrightarrow> a = sqrt (c^2 - b^2)"
proof -
  assume "a^2 + b^2 = c^2" "a \<le> b"
  hence "c^2 - b^2 = a^2" by simp
  hence "sqrt (c^2 - b^2) = sqrt (a^2)" by (metis assms(1) assms(2) power2_eq_square)
  thus "a = sqrt (c^2 - b^2)" using assms(1) by simp
qed