lemma chinese_remainder:
  fixes x a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
    and "x mod b = a" "x mod d = c"
  shows "\<exists>k. x = a + b * k \<and> x mod d = c"
proof -
  let ?k = "x div b"  
  have "x = ?k * b + (x mod b)" by (metis div_mult_mod_eq)
  then have "x = ?k * b + a" using assms(5) by auto
  moreover have "x mod d = (?k * b + a) mod d"
    by (metis calculation)
  ultimately show "\<exists>k. x = a + b * k \<and> x mod d = c" 
    by (metis assms(5) assms(6) mod_div_mult_eq mult.commute)
qed