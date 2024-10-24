theorem algebra_2varlineareq:
  fixes x e :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = a - x \<and> x = (b - a) / 1"
proof -
  have eq1: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + (a - x) = b" using h1 eq1 by simp
  have eq3: "2 * x - x + a = b" using eq2 by simp
  then have "x + a = b" by simp 
  then have "x = b - a" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel)
  then show "e = a - x \<and> x = (b - a) / 1" by (metis div_by_1 eq1)
qed