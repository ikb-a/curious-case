lemma multi_distrib_complex_n_dim:
  fixes a b :: "complex list" and c d :: "complex list"
  assumes "length a = length c" "length b = length d"
  shows "(\<Sum>i=0..<length a. (a!i + b!i) * (c!i + d!i)) = 
         (\<Sum>i=0..<length a. (a!i * c!i + a!i * d!i + b!i * c!i + b!i * d!i))"
proof -
  have "(\<Sum>i=0..<length a. (a!i + b!i) * (c!i + d!i)) = 
        (\<Sum>i=0..<length a. (a!i * c!i + a!i * d!i + b!i * c!i + b!i * d!i))"
    by (auto simp: field_simps)
  thus ?thesis by simp
qed