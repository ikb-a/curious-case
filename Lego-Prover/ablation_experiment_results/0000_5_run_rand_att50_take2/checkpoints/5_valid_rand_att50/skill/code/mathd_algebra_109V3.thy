theorem mathd_algebra_109:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have eq: "3*a + 2*b = 12" using h0 by simp
  have substitute: "3*4 + 2*b = 12" using h1 eq by simp
  have "12 + 2*b = 12" using substitute by simp
  have "2*b = 0" using `12 + 2*b = 12` by simp
  have "b = 0" using `2*b = 0` by (simp add: field_simps)
  show ?thesis using `b = 0` by simp
qed