lemma square_expansion_with_additional_terms:
  fixes a b x y :: real
  shows "(x + a - (y + b))^2 = (x - y)^2 + 2*(x - y)*(a - b) + (a - b)^2"
proof -
  have "(x + a - (y + b))^2 = (x - y + a - b)^2" by sos
  also have "... = (x - y)^2 + 2*(x - y)*(a - b) + (a - b)^2" by sos
  finally show ?thesis .
qed