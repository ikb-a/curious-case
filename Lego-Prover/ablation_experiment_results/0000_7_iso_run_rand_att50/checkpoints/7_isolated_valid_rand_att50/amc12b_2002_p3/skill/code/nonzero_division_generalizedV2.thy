lemma nonzero_division_generalized:
  fixes a b c d :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0" and "c \<noteq> 0" and "d \<noteq> 0"
  shows "(b / a) * a = b \<and> (c / a) * a = c \<and> (d / a) * a = d"
proof -
  have "b / a * a = b" using assms by (metis field_simps)
  have "c / a * a = c" using assms by (metis field_simps)
  have "d / a * a = d" using assms by (metis field_simps)
  then show ?thesis by (metis \<open>b / a * a = b\<close> \<open>c / a * a = c\<close>)
qed