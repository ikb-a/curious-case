lemma chinese_remainder_theorem:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
    and "x mod a = b" "x mod c = d"
  shows "\<exists>k. x = b + a * k"
proof -
  obtain k where "x = b + a * k" 
    using assms(5) by (metis mod_div_mult_eq mult.commute)
  then show ?thesis by auto
qed