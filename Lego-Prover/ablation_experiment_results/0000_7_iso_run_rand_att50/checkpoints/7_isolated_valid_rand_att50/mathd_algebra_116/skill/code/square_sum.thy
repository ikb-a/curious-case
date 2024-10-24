lemma square_sum:
  fixes a b :: real
  shows "(a + b)^2 = a^2 + 2*a*b + b^2"
proof -
  have "(a + b)^2 = (a + b) * (a + b)" by sos
  then show ?thesis by sos
qed