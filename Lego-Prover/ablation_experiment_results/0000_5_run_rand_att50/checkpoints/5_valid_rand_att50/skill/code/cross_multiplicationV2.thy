lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> c" "a * b = d * c"
  shows "a * (b - c) = d * (b - c) \<Longrightarrow> a = d"
proof -
  assume "a * (b - c) = d * (b - c)"
  then have "b - c \<noteq> 0" using assms(1) by auto
  thus ?thesis by (metis \<open>a * (b - c) = d * (b - c)\<close> mult_cancel_right)
qed