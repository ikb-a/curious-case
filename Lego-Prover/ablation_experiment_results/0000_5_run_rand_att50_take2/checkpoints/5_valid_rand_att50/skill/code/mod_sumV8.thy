lemma mod_sum:
  fixes x y m :: nat
  assumes "x < m" "y < m"
  shows "(x + y) mod m = (x mod m + y mod m) mod m"
proof -
  have "x mod m = x" using assms(1) by simp
  have "y mod m = y" using assms(2) by simp
  then have "x + y = (x mod m) + (y mod m)" by (metis \<open>x mod m = x\<close>)
  hence "(x + y) mod m = (x mod m + y mod m) mod m" 
    using mod_add_eq by auto
  thus ?thesis by simp
qed