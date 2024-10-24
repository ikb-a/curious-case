lemma sqrt_nonneg:
  fixes a :: real
  shows "a \<ge> 0 \<Longrightarrow> sqrt a \<ge> 0"
proof -
  assume "a \<ge> 0"
  then show "sqrt a \<ge> 0" by (cases "a = 0") (simp_all add: sqrt_def)
qed