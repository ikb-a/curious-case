lemma sqrt_non_negative:
  fixes a :: real
  shows "a >= 0 \<Longrightarrow> sqrt a >= 0"
proof -
  assume "a >= 0"
  then show "sqrt a >= 0" by auto
qed