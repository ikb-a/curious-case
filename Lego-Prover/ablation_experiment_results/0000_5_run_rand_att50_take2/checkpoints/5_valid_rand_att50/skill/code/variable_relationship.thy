lemma variable_relationship:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y" "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have eq: "x + 2/x = y + 2/y" using assms(4) by simp
  have rearranged: "x - y = (2/y - 2/x)" using eq by (simp add: field_simps)
  have common_den: "x - y = (2 * (x - y)) / (x * y)" 
    using rearranged by sos
  have "1 = 2 / (x * y)" using assms(3) common_den by sos
  then show ?thesis by (simp add: field_simps)
qed