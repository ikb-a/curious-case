lemma substitution_in_linear_equation:
  fixes a b :: real
  assumes "m * a + n * b = c" 
    and "a = k"
  shows "m * k + n * b = c"
proof -
  have "m * a + n * b = c" using assms(1) by simp
  also have "m * k + n * b = c" using assms(2) by (metis calculation)
  finally show ?thesis by (metis \<open>m * k + n * b = c\<close>)
qed