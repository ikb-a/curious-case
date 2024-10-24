lemma square_expansion_with_cubic_extension:
  fixes x y z :: real
  shows "(x - y - z)^2 = x^2 - 2 * x * (y + z) + (y + z)^2"
proof -
  have "(x - y - z)^2 = (x - (y + z))^2" by sos
  also have "... = x^2 - 2 * x * (y + z) + (y + z)^2" by sos
  finally show ?thesis .
qed