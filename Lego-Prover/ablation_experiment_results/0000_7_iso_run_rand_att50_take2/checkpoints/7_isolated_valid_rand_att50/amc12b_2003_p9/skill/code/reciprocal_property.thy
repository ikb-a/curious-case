lemma reciprocal_property:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "b * (1 / a) = b / a"
proof -
  have "b * (1 / a) = b * (1 / a) * (a / a)" by (simp add: assms)
  then show ?thesis by simp
qed