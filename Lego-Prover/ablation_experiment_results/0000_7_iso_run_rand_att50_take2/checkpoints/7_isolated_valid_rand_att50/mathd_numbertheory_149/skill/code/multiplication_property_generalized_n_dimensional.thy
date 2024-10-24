lemma multiplication_property_generalized_n_dimensional:
  fixes a b c:: "real list" 
  assumes "length a = n" "length b = n" "length c = n" "(\<forall>i. a ! i \<noteq> 0) \<and> (\<forall>i. b ! i \<noteq> 0) \<and> (\<forall>i. c ! i \<noteq> 0)" 
  shows "map (\<lambda>i. a ! i * (b ! i / (c ! i))) (if n > 0 then [0..<n] else []) = map (\<lambda>i. (a ! i * b ! i) / (c ! i)) (if n > 0 then [0..<n] else [])"
proof -
  have "map (\<lambda>i. a ! i * (b ! i / (c ! i))) (if n > 0 then [0..<n] else []) = 
        map (\<lambda>i. a ! i * (b ! i * (1 / (c ! i)))) (if n > 0 then [0..<n] else [])" by (simp add: divide_simps)
  moreover have "... = map (\<lambda>i. (a ! i * b ! i) * (1 / (c ! i))) (if n > 0 then [0..<n] else [])" 
    by (simp add: algebra_simps)
  ultimately show ?thesis by (simp add: divide_simps)
qed