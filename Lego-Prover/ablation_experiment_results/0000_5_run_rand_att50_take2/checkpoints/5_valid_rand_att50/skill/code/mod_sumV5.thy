lemma mod_sum:
  fixes x y m :: nat
  assumes "x < m" "y < m"
  shows "(x + y) mod m = (x mod m + y mod m) mod m"
proof -
  have "x mod m = x" using assms(1) by simp
  hence "x mod m + y mod m = x + (y mod m)" using assms(2) by simp
  hence "x mod m + y mod m = x + y" using assms(2) by simp
  then have "(x + y) mod m = (x + y) mod m" by simp
  moreover have "(x mod m + y mod m) mod m = (x + y) mod m" using `x mod m + y mod m = x + y` by simp
  ultimately show ?thesis by simp
qed