lemma floor_sum_properties:
  fixes r :: real and a :: real and b :: real
  assumes "a \<le> r \<and> r < b"
  shows "floor r \<le> r \<and> r < floor r + 1"
proof -
  have "floor r \<le> r" by auto
  moreover have "r < floor r + 1" 
  proof -
    have "floor r \<le> r" by auto
    then have "floor r + 1 \<le> r + 1" by (simp add: add_le_mono)
    also have "r + 1 < floor r + 2" 
      using assms by arith
    finally show ?thesis by auto
  qed
  ultimately show ?thesis by auto
qed