lemma combine_fractions:
  fixes a b c d :: real
  assumes "c ≠ 0" "d ≠ 0"
  shows "(a/c) + (b/d) = (ad + bc) / (cd)"