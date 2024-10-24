lemma mod_sum:
  fixes x y m :: nat
  assumes "x < m" "y < m"
  shows "(x + y) mod m = (x mod m + y mod m) mod m"
proof -
  have "x mod m = x" using assms(1) by simp
  hence "x + y = (x mod m) + y" by (simp add: algebra_simps)
  have "y mod m = y" using assms(2) by simp
  hence "x + y = (x mod m) + (y mod m)" by (metis \<open>x + y = x mod m + y\<close>)
  then have "(x + y) mod m = ((x mod m) + (y mod m)) mod m" 
    by (simp add: algebra_simps)
  thus ?thesis by simp
qed