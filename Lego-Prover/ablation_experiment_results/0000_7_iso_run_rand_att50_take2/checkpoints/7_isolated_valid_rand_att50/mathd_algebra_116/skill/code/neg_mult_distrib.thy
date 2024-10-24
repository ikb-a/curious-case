lemma neg_mult_distrib:
  fixes a b :: real
  shows "-(a + b) = -a + -b"
proof -
  have "-(a + b) = -1 * (a + b)" by simp
  also have "... = -1 * a + -1 * b" by (simp add: distrib)
  finally show ?thesis by simp
qed