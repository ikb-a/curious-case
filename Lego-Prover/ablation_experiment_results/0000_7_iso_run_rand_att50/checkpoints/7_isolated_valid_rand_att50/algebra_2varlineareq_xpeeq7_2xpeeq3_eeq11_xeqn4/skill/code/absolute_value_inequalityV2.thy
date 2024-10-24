lemma absolute_value_inequality:
  fixes a b c :: real
  assumes h0: "abs(a - b) < c"
  shows "b - c < a \<and> a < b + c"
proof -
  have "a - b < c" and "-(a - b) < c" using h0 by auto
  then have "b - c < a" and "a < b + c" by auto
  then show ?thesis by auto
qed