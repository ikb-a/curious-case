lemma nonzero_division_general:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "(b / a) * a = b \<and> (c / a) * a = c"
proof -
  have "b / a * a = b" using assms by (metis field_simps)
  have "c / a * a = c" using assms by (metis field_simps)
  then show ?thesis by (metis \<open>b / a * a = b\<close>)
qed