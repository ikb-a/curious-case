lemma mathd_algebra_109_n_dimensions:
  fixes a b :: "real"
  assumes h0 : "0 < a \<and> 0 < b"
    and h1 : "3*a + 2*b = 12"
  shows "b = (12 - 3*a) / 2"
proof -
  have "b = (12 - 3*a) / 2" using h1 by (simp add: field_simps)
  thus ?thesis by simp
qed