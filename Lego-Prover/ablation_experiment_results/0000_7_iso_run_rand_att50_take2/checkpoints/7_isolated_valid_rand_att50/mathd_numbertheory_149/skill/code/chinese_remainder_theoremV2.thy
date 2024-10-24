lemma chinese_remainder_theorem:
  fixes a b c d x :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
    and "x mod a = b" "x mod c = d"
  shows "\<exists>k. x = b + a * k"
proof -
  have "x = b + (x div a) * a" using assms(5) by (metis mod_div_mult_eq)
  thus ?thesis
    by (auto simp: field_simps)
qed