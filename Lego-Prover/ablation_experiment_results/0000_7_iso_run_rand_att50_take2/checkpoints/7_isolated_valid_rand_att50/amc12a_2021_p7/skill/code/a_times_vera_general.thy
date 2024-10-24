lemma a_times_vera_general:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "a * (1 / a) = 1" by (simp add: assms)
  then show ?thesis by simp
qed