theorem algebra_2varlineareq_simple:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_sub: "e = 7 - x" using h0 by (auto simp: field_simps)
  then have eq: "2 * x + (7 - x) = 3" using h1 by simp
  have "2 * x + 7 - x = 3" using eq by simp
  hence "x + 7 = 3" by (simp add: field_simps)
  have "x = 3 - 7" by (metis \<open>x + 7 = 3\<close> add.commute add_diff_cancel dbl_inc_simps(3) h0)
  then have "x = -4" by simp
  from e_sub have "e = 7 - (-4)" by (metis \<open>x = -4\<close>)
  then have "e = 7 + 4" by simp
  thus "e = 11 \<and> x = -4" by (simp add: \<open>x = -4\<close>)
qed