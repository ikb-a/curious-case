lemma square_sum_geq_1:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 >= 1 \<longleftrightarrow> (x^2 + y^2) + (x * y)^2 >= 1"
proof -
  have "x^2 + y^2 + (x * y)^2 = (x^2 + y^2) + (x * y)^2" by simp
  thus ?thesis by auto
qed