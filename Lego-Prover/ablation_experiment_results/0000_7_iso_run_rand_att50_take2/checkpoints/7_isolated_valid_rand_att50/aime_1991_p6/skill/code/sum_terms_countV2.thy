lemma sum_terms_count:
  fixes n :: nat
  assumes "n = b - a + 1" 
  and "a = 19" 
  and "b = 91"
  shows "n = 73"
proof -
  have "n = 91 - 19 + 1" using assms by simp
  then show ?thesis by simp
qed