lemma complex_expansion:
  fixes a b c d :: complex
  shows "(a-d)(a-c)(a-b) = -(((a^2 - a(b+c)) + bc) * d) + (a^2 - a(b+c) + bc) * a)"