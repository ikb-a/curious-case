theorem mathd_algebra_relationship:
  fixes a b :: real
  assumes h0: "3*a + 2*b = 12"
  shows "b = (12 - 3*a)/2"
proof -
  have "3*a + 2*b = 12" using h0 by simp
  then have "2*b = 12 - 3*a" by (simp add: algebra_simps)
  then show ?thesis by (simp add: field_simps)
qed