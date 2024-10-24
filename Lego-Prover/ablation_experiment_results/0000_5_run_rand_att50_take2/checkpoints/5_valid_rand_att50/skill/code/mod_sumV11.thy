lemma mod_sum:
  fixes x y m :: nat
  assumes "x < m" "y < m"
  shows "(x + y) mod m = (x mod m + y mod m) mod m"
proof -
  have "x mod m = x" using assms(1) by simp
  have "y mod m = y" using assms(2) by simp
  hence "x mod m + y mod m = x + y" by (metis \<open>x mod m = x\<close>)
  then have "(x mod m + y mod m) mod m = (x + y) mod m" by simp
  thus ?thesis by simp
qed