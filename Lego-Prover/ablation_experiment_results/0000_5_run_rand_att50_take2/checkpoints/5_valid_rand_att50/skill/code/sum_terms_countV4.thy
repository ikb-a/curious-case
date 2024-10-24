lemma sum_terms_count:
  fixes a b :: nat
  shows "card {a ..< b} = b - a"
proof -
  have "b - a = card {a ..< b}" 
    by auto 
  thus ?thesis by auto
qed