theorem specific_solution:
  fixes a b :: real
  assumes h0: "3*a + 2*b = 12"
    and h1: "a = 4"
  shows "b = 0"
proof -
  have "b = (12 - 3*a)/2" using mathd_algebra_relationship h0 by simp
  then have "b = (12 - 3*4)/2" using h1 by simp
  then show "b = 0" by simp
qed