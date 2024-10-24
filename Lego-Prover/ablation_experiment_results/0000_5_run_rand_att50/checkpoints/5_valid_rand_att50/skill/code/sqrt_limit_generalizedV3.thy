lemma sqrt_limit_generalized:
  fixes x :: real
  assumes "b = sqrt (x + c)" "c > 0" "b > 0"
  shows "x = b^2 - c"
proof -
  have "b^2 = x + c" using assms by auto
  thus ?thesis by (metis \<open>b\<^sup>2 = x + c\<close> add_diff_cancel)
qed