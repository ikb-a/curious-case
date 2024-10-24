theorem amc12a_2015_p10_generalized:
  fixes x y z :: real
  assumes h0 : "y > 0"
    and h1 : "y < x"
    and h2 : "x + z + (x * z) = 80"
    and h3 : "z > 0"
  shows "x = (80 - z) / (1 + z)"
proof -
  have rearranged: "x * (1 + z) = 80 - z" using h2 by sos
  hence "x = (80 - z) / (1 + z)" using h3 by (simp add: field_simps)
  thus ?thesis by (simp)
qed