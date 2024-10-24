lemma chinese_remainder_theorem:
  fixes a b c d x :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
    and "x mod a = b" "x mod c = d"
  shows "\<exists>k. x = b + a * k"
proof -
  have "x mod a = b" by (simp add: assms(5))
  have "x mod c = d" by (simp add: assms(6))
  let ?k = "x div a"
  have "x = a * ?k + (x mod a)" by auto
  also have "... = a * ?k + b" using `x mod a = b` by simp
  finally have "x = b + a * ?k" by simp
  have "?k = x div a" by simp
  then show "\<exists>k. x = b + a * k" by (metis \<open>x = b + a * (x div a)\<close>)
qed