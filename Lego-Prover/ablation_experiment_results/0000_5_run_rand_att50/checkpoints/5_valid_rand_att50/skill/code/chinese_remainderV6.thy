lemma chinese_remainder:
  fixes a b c m n :: nat
  assumes "m > 0" "n > 0" "a mod m = b" "a mod n = c"
  shows "\<exists>k. a = b + m * k \<and> a mod n = c"
proof -
  let ?k = "a div m"
  have "a = ?k * m + (a mod m)" by auto
  then have "a = ?k * m + b" using assms(3) by simp
  moreover have "a mod n = (?k * m + b) mod n"
    by (metis calculation)
  ultimately show "\<exists>k. a = b + m * k \<and> a mod n = c" 
    by (metis assms(3) assms(4) mod_div_mult_eq mult.commute)
qed