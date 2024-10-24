lemma real_number_properties:
  fixes x y z :: real
  shows "x < y \<Longrightarrow> x + z < y + z"
proof -
  assume "x < y"
  then have "x + z < y + z" 
    by auto
  thus ?thesis by simp
qed