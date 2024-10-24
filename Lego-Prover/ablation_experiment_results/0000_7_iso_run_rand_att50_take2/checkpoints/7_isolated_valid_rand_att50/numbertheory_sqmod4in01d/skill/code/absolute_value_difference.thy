lemma absolute_value_difference:
  fixes a b c :: real
  assumes "abs(a - b) < c"
  shows "b - c < a \<and> a < b + c"
proof -
  have "a - b < c" and "-(a - b) < c" using assms by auto
  then show ?thesis
  proof -
    have "b - c < a" using `a - b < c` by (metis abs_diff_less_iff assms)
    have "a < b + c" using `-(a - b) < c` by (metis abs_diff_less_iff assms)
    thus ?thesis by (metis \<open>b - c < a\<close>)
  qed
qed