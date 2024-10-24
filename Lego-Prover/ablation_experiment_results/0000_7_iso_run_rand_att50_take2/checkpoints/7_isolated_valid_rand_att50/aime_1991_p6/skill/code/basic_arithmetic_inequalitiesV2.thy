lemma basic_arithmetic_inequalities:
  fixes a b c :: real
  assumes "a \<le> b" and "b \<le> c"
  shows "a \<le> c"
proof -
  have "a < c \<or> a = c" 
    using assms(1) assms(2) by auto
  thus ?thesis
    using le_cases by fastforce
qed