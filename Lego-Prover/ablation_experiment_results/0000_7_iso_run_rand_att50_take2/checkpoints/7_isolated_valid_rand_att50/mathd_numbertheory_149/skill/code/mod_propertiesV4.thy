lemma mod_properties:
  fixes a b c d :: nat
  assumes "a mod d = b" "c mod d = 0"
  shows "(a + c) mod d = b"
proof -
  have "a = b + (a div d) * d" using assms(1) by auto
  have "c = (c div d) * d" using assms(2) by auto
  then have "a + c = (b + (a div d) * d) + ((c div d) * d)" by (metis \<open>a = b + a div d * d\<close>)
  also have "... = b + ((a div d) + (c div d)) * d" by (auto simp: field_simps)
  finally have "a + c = b + ((a div d) + (c div d)) * d" .
  then have "(a + c) mod d = (b + ((a div d) + (c div d)) * d) mod d" by (simp)
  also have "... = b mod d" by auto
  finally show ?thesis using assms(1) by auto
qed