lemma floor_sum_properties:
  fixes r :: real and a :: real and b :: real
  assumes "a \<le> r \<and> r < b"
  shows "floor r \<le> r \<and> r < floor r + 1"
proof -
  have "floor r \<le> r" 
    by auto
  moreover have "r < floor r + 1" 
    by auto
  ultimately show ?thesis by auto
qed