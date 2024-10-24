lemma number_terms:
  fixes n x :: nat
  assumes "x + (73 - x) = 73"
  shows "x = x"
proof -
  have "x + (73 - x) = 73" using assms by assumption
  then show ?thesis by auto
qed