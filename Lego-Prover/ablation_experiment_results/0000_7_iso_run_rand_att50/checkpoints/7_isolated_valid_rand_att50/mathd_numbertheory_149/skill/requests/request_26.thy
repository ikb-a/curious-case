lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a < b" "c < d"
  shows "(\<exists> x. x mod b = a \<and> x mod d = c) \<longleftrightarrow> (\<exists> k. (d * k + c) mod b = a)"