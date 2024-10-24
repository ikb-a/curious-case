lemma square_expansion_with_constant:
  fixes a b c :: real
  shows "(a - (b + c))^2 = a^2 - 2*a*(b + c) + (b + c)^2"
proof -
  have "a - (b + c) = a - b - c" by simp
  then show ?thesis by sos
qed