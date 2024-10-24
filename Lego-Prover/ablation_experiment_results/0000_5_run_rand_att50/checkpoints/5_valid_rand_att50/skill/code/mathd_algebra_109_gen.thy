theorem mathd_algebra_109_gen:
  fixes a b :: real
  assumes h0: "3 * a + 2 * b = c"
    and h1: "a = k" "k > 0" "c > 0"
  shows "b = (c - 3 * k) / 2"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * k + 2 * b = c" using h1(1) eq by simp
  hence "2 * b = c - 3 * k" by auto
  thus ?thesis by (simp add: field_simps)
qed