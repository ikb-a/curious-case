lemma multi_distrib_with_vars_extended:
  fixes a b c d e f g h i j :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (g + h) + (i + j) * (k + l) = 
         (a * c + b * c + a * d + b * d) + (e * g + f * g + e * h + f * h) + (i * k + j * k + i * l + j * l)"
proof -
  have "(a + b) * (c + d) = a * c + a * d + b * c + b * d" 
    by (simp add: multi_distrib_with_vars)
  moreover have "(e + f) * (g + h) = e * g + e * h + f * g + f * h" 
    by (simp add: multi_distrib_with_vars)
  moreover have "(i + j) * (k + l) = i * k + i * l + j * k + j * l"
    by (simp add: multi_distrib_with_vars)
  ultimately show ?thesis by simp
qed