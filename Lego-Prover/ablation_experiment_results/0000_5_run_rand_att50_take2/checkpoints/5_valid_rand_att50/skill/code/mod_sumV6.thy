lemma mod_sum:
  fixes x y m :: nat
  assumes "x < m" "y < m"
  shows "(x + y) mod m = (x mod m + y mod m) mod m"
proof -
  have "x mod m = x" and "y mod m = y"
    using assms by simp_all
  then have "x mod m + y mod m = x + y" 
    by (simp add: algebra_simps)
  then have "(x + y) mod m = (x + y) mod m" 
    by simp
  thus ?thesis by presburger
qed