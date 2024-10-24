lemma nonzero_division:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "1 / a * a = 1"
proof -
  have "1 / a * a = (1 / a) * a" by simp
  then show ?thesis by (simp add: assms)
qed