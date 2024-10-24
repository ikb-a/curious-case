lemma floor_bounds:
  fixes r :: real
  shows "floor r \<le> r \<and> r < floor r + 1"
proof -
  have "floor r \<le> r" 
    by auto
  have "r < floor r + 1" 
  proof -
    have "floor r < r + 1" 
      by arith
    thus "r < floor r + 1" 
      by auto
  qed
  thus ?thesis by auto
qed