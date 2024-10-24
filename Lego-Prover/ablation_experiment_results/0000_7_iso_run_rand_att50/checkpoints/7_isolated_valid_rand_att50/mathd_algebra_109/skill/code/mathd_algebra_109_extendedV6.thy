theorem mathd_algebra_109_extended:
  fixes a b :: real
  assumes h0 : "n * a + m * b = c" 
    and h1 : "a = k" 
    and h2 : "n > 0" "m > 0" "c > 0"
  shows "b = (c - n * k) / m"
proof -
  have "n * a + m * b = c" using h0 by simp
  then have "n * k + m * b = c" using h1 by simp
  have "m * b = c - n * k" by (smt (verit) h0 h1)
  thus "b = (c - n * k) / m" using h2(2) by (auto simp: field_simps)
qed