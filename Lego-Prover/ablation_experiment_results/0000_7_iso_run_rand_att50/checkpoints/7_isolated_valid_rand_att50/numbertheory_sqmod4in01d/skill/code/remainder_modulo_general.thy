lemma remainder_modulo_general:
  fixes a :: int
  shows "a mod d \<in> {0..d-1} \<Longrightarrow> d > 0"
proof -
  assume "a mod d \<in> {0..d-1}"
  then show "d > 0" by auto
qed