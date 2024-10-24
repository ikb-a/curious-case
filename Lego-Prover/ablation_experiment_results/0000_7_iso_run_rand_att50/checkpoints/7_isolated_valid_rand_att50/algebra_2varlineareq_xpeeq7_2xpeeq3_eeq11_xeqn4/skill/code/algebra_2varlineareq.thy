theorem algebra_2varlineareq:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have "e = 7 - x" using h0 by (auto simp: field_simps)
  then have "2 * x + (7 - x) = 3" using h1 by simp
  then have "x + 7 = 3" by (simp add: field_simps)
  then have "x = 3 - 7" by (simp)
  then have "x = -4" by simp
  then show "e = 11 \<and> x = -4" using `e = 7 - x` by (simp add: `x = -4`)
qed