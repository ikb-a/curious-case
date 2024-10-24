lemma product_difference_square:
  fixes a b :: real
  shows "(a * b - 1)^2 + (a + b)^2 >= 1"
proof -
  let ?E = "(a * b - 1)^2 + (a + b)^2"
  have "(a * b - 1)^2 = (a^2 * b^2 - 2 * a * b + 1)" by sos
  have "(a + b)^2 = a^2 + 2 * a * b + b^2" by sos
  have "?E = (a^2 * b^2 - 2 * a * b + 1) + (a^2 + 2 * a * b + b^2)"
    by sos
  have "?E = a^2 * b^2 + a^2 + b^2 + 1" by sos
  have "a^2 * b^2 >= 0" by auto
  have "a^2 >= 0" by auto
  have "b^2 >= 0" by auto
  then have "?E >= 1" by sos
  have "?E = 1" when "a = 0" and "b = 0" 
    using that by auto
  thus ?thesis by sos
qed