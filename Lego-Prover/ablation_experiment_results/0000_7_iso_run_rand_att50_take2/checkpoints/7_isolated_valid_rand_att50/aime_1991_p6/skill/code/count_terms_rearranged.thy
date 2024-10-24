lemma count_terms_rearranged:
  fixes n :: nat
  shows "n = 73 \<Longrightarrow> n = 91 - 19 + 1"
proof -
  assume "n = 73"
  then show "n = 91 - 19 + 1" by simp
qed