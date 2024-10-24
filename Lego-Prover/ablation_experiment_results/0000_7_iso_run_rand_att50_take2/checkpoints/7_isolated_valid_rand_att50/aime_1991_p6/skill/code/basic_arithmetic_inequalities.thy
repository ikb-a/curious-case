lemma basic_arithmetic_inequalities:
  fixes a b c :: real
  assumes "a \<le> b" and "b \<le> c"
  shows "a \<le> c"
proof -
  have "a \<le> b" using assms(1) by simp
  have "b \<le> c" using assms(2) by simp
  then show "a \<le> c" using `a \<le> b` by (metis order_trans)
qed