lemma square_expansion_general:
  fixes a b c :: real
  shows "(a - b - c)^2 = a^2 - 2*a*(b + c) + (b + c)^2"
proof -
  have "(a - (b + c))^2 = a^2 - 2 * a * (b + c) + (b + c)^2" by (sos)
  thus ?thesis by sos
qed