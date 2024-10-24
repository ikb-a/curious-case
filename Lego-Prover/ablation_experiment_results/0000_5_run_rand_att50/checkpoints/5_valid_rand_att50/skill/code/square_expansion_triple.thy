lemma square_expansion_triple:
  fixes a b c d :: real
  shows "(a - b - c - d)^2 = a^2 - 2*a*(b + c + d) + (b + c + d)^2"
proof -
  have "(a - (b + c + d))^2 = a^2 - 2 * a * (b + c + d) + (b + c + d)^2" by (sos)
  thus ?thesis by sos
qed