lemma square_expansion_cubic:
  fixes x y z :: real
  shows "(x - y - z)^2 = x^2 - 2 * x * (y + z) + (y + z)^2"
proof -
  have "(y + z)^2 = y^2 + 2 * y * z + z^2" by sos
  then show ?thesis 
    by sos
qed