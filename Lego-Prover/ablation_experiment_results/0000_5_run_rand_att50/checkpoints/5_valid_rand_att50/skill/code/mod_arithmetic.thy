lemma mod_arithmetic:
  fixes x y :: nat
  assumes "x mod n = a" "y mod n = b"
  shows "(x + y) mod n = (a + b) mod n"
proof -
  have "x = a + n * (x div n)" 
    using assms(1) by auto
  have "y = b + n * (y div n)" 
    using assms(2) by auto
  then have "x + y = (a + n * (x div n)) + (b + n * (y div n))"
    by (metis \<open>x = a + n * (x div n)\<close>)
  then have "x + y = (a + b) + n * ((x div n) + (y div n))"
    by (simp add: algebra_simps)
  then have "(x + y) mod n = ((a + b) + n * ((x div n) + (y div n))) mod n"
    by simp
  also have "... = (a + b) mod n"
    by (simp add: mod_simps)
  finally show ?thesis by simp
qed