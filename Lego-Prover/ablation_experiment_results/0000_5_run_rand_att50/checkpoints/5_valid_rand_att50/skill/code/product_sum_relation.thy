lemma product_sum_relation:
  fixes x y :: real
  assumes h0: "x + y = s" and h1: "x * y = p"
  shows "x^2 + y^2 = s^2 - 2 * p"
proof -
  have "x^2 + y^2 = (x + y)^2 - 2 * x * y" by sos
  then show ?thesis using h0 h1 by auto
qed