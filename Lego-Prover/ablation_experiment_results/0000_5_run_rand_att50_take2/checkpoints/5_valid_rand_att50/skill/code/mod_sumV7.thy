lemma mod_sum:
  fixes x y m :: nat
  assumes "x < m" "y < m"
  shows "(x + y) mod m = (x mod m + y mod m) mod m"
proof -
  have "x mod m = x" and "y mod m = y" 
    using assms by auto
  then have "x mod m + y mod m = x + y"
    by simp
  thus ?thesis 
    using assms by auto
qed