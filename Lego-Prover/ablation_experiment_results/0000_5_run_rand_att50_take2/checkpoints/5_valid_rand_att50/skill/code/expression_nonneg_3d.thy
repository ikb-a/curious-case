lemma expression_nonneg_3D:
  fixes x y z :: real
  shows "((x * y) - 1)^2 + (x + y)^2 + ((y * z) - 1)^2 + (y + z)^2 + ((z * x) - 1)^2 + (z + x)^2 >= 3"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2 + ((y * z) - 1)^2 + (y + z)^2 + ((z * x) - 1)^2 + (z + x)^2"
  have "((x * y) - 1)^2 = x^2 * y^2 - 2 * x * y + 1" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "((y * z) - 1)^2 = y^2 * z^2 - 2 * y * z + 1" by sos
  have "(y + z)^2 = y^2 + 2 * y * z + z^2" by sos
  have "((z * x) - 1)^2 = z^2 * x^2 - 2 * z * x + 1" by sos
  have "(z + x)^2 = z^2 + 2 * z * x + x^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2) + (y^2 * z^2 - 2 * y * z + 1) + (y^2 + 2 * y * z + z^2) + (z^2 * x^2 - 2 * z * x + 1) + (z^2 + 2 * z * x + x^2)"
    by sos
  have "?E = x^2 * y^2 + y^2 * z^2 + z^2 * x^2 + 2 * (x^2 + y^2 + z^2) + 3"
    by sos
  have "x^2 * y^2 >= 0" by auto
  have "y^2 * z^2 >= 0" by auto
  have "z^2 * x^2 >= 0" by auto
  have "x^2 >= 0" by auto
  have "y^2 >= 0" by auto
  have "z^2 >= 0" by auto
  thus ?thesis by sos
qed