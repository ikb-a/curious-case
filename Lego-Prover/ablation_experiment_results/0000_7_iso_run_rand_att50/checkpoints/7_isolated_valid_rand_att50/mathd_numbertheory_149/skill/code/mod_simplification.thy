lemma mod_simplification:
  fixes x y a :: nat
  assumes "x mod y = a" "y > 0"
  shows "\<exists>k. x = k * y + a"
proof -
  have "x = y * (x div y) + x mod y"
    by auto
  then have "x = y * (x div y) + a"
    using assms(1) by auto
  then show ?thesis
    by (auto simp: field_simps)
qed