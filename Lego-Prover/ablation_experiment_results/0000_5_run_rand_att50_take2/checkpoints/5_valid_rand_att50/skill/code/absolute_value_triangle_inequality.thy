lemma absolute_value_triangle_inequality:
  fixes a b :: real
  assumes "abs(a) + abs(b) < c"
  shows "a + b < c" and "a + b > -c"
proof -
  have "a < c - abs(b)" and "a > -c + abs(b)" 
    using assms by auto
  then show "a + b < c" and "a + b > -c" by auto
qed