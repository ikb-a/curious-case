lemma chinese_remainder_theorem:
  fixes a b c d x :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
    and "x mod a = b" "x mod c = d"
  shows "\<exists>k. x = b + a * k"
proof -
  let ?k = "x div a"
  have "x = a * ?k + (x mod a)" 
    by auto
  then have "x = a * ?k + b" using assms(5) by simp
  thus ?thesis by (auto simp: field_simps)
qed