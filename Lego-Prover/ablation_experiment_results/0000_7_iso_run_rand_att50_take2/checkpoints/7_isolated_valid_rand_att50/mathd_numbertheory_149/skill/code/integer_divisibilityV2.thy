lemma integer_divisibility:
  fixes n d :: nat
  assumes "n mod d = 0"
  shows "\<exists>k. n = k * d"
proof -
  have "n = d * (n div d) + (n mod d)"
    by auto
  then show "\<exists>k. n = k * d" 
    using assms by auto
qed