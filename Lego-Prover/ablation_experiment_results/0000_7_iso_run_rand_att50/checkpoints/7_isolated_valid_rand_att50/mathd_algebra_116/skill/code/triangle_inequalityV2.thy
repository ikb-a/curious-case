lemma triangle_inequality:
  fixes x y :: real
  shows "abs(x) + abs(y) >= abs(x + y)"
proof -
  have "abs(x) = max x (-x)" and "abs(y) = max y (-y)" by auto
  then have "abs(x) + abs(y) = max x (-x) + max y (-y)"
    by simp
  also have "... >= max (x + y) (-(x + y))" 
    using max_def by auto
  finally show ?thesis by auto
qed