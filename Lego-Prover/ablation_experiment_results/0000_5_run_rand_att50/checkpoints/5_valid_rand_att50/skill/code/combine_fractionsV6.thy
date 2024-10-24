lemma combine_fractions:
  fixes x y a :: real
  assumes "a \<noteq> 0"
  shows "x / a + y / a = (x + y) / a"
proof -
  have "x / a + y / a = (x + y) / a"
    by (metis add_divide_distrib)
  thus ?thesis by simp
qed