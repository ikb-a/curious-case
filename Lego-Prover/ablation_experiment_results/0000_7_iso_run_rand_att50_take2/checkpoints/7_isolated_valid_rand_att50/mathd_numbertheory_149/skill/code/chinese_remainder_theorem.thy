lemma chinese_remainder_theorem:
  fixes a b c d x :: nat
  assumes "a > 0" "b < a" "c > 0" "d < c"
    and "x mod a = b" "x mod c = d"
  shows "\<exists>k. x = b + a * k"
proof -
  obtain k1 where "x = b + a * k1" using assms(5) by (metis mod_div_mult_eq mult.commute)
  thus "\<exists>k. x = b + a * k" by auto
qed