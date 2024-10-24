lemma square_expansion_with_additive_identity:
  fixes x y z :: real
  shows "(x - y + z)^2 = (x + z)^2 - 2 * (x + z) * y + y^2"
proof -
  have "(x - y + z)^2 = (x + z - y)^2" by sos
  also have "... = (x + z)^2 - 2 * (x + z) * y + y^2" by sos
  finally show ?thesis .
qed