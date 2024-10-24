lemma generalize_rearrangement:
  fixes x y :: real
  assumes "x + a/x = y + a/y" and "x \<noteq> 0" and "y \<noteq> 0"
  shows "x - y = (a/y - a/x)"
proof -
  have "x + a/x - (y + a/y) = 0" using assms(1) by simp
  then have "x - y = a/y - a/x" by (simp add: field_simps)
  thus ?thesis by auto
qed