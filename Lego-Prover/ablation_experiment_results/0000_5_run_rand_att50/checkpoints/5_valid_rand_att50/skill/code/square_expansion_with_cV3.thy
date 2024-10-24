lemma square_expansion_with_c:
  fixes a b c :: real
  shows "(a - (b + c))^2 = a^2 - 2*a*(b + c) + (b + c)^2"
proof -
  have "(a - (b + c))^2 = (a - b - c)^2"
    by sos
  also have "... = a^2 - 2*a*(b+c) + (b+c)^2"
    by sos
  finally show ?thesis by simp
qed