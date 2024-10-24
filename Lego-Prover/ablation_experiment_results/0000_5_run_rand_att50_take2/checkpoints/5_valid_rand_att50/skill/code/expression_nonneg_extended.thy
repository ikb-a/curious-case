lemma expression_nonneg_extended:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 >= 1"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  have "?E = x^2 * y^2 + x^2 + y^2 + 1" by sos
  have "x^2 * y^2 >= 0" by auto
  have "x^2 >= 0" by auto
  have "y^2 >= 0" by auto
  show "?E >= 1"
  proof (cases "x = 0 \<and> y = 0")
    case True
    then show ?thesis by auto
  next
    case False
    then have "x^2 + y^2 > 0" by sos
    thus ?thesis using `x^2 * y^2 >= 0` by sos
  qed
qed