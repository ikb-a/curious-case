theorem mathd_algebra_109_general:
  fixes a b :: real
  assumes h0 : "c * a + d * b = e" 
      and h1 : "a = f"
      and h2 : "c > 0" "d > 0" "e > 0" "f > 0"
  shows "b = (e - c * f) / d"
proof -
  have eq: "c * a + d * b = e" using h0 by simp
  have "c * f + d * b = e" using h1 eq by simp
  have "d * b = e - c * f" by (smt (verit) h0 h1)
  then show ?thesis using h2 by (auto simp: field_simps)
qed