theorem mathd_algebra_109_n_dimensions:
  fixes a b :: "real list" and n :: nat
  assumes "length a = n" "length b = n" 
    and h0: "\<forall>i < n. 3 * a ! i + 2 * b ! i = 12"
    and h1: "\<forall>i < n. a ! i = 4"
  shows "\<forall>i < n. b ! i = 0"
proof -
  have "\<forall>i < n. 3 * (a ! i) + 2 * (b ! i) = 12" using h0 by simp
  have "\<forall>i < n. 3 * 4 + 2 * (b ! i) = 12" using h1 by (metis h0 mult_2)
  hence "\<forall>i < n. 12 + 2 * (b ! i) = 12" by simp
  hence "\<forall>i < n. 2 * (b ! i) = 0" by (metis add_cancel_right_right)
  thus ?thesis by auto
qed