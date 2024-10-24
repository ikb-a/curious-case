lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a \<le> b" and "b \<le> c"
  shows "a \<le> c"
proof -
  from assms(1) and assms(2) have "a < c \<or> a = c" 
    by auto
  thus ?thesis
    using le_cases by fastforce
qed