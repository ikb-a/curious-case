lemma factorization_lemma:
  fixes a b c :: real
  assumes "a \<noteq> b"
  shows "(a - b)(c + d) = 0 \<longleftrightarrow> c + d = 0"