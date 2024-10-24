lemma mod_sum:
  fixes x y m :: nat
  assumes "x < m" "y < m"
  shows "(x + y) mod m = (x mod m + y mod m) mod m"
proof -
  have "x mod m = x" using assms(1) by simp
  have "y mod m = y" using assms(2) by simp
  then have "x mod m + y mod m = x + y" 
    by (metis \<open>x mod m = x\<close>)
  moreover have "(x + y) mod m = (x mod m + y mod m) mod m" 
    using `x mod m = x` `y mod m = y` by (simp add: mod_add_eq)
  ultimately show ?thesis by simp
qed