lemma mod_addition:
  fixes a b n x y :: nat
  assumes "a mod n = x" and "b mod n = y"
  shows "(a + b) mod n = (x + y) mod n"
proof -
  have "a = x + (a div n) * n" using assms(1) by auto
  have "b = y + (b div n) * n" using assms(2) by auto
  then have "a + b = (x + y) + ((a div n) + (b div n)) * n" 
    using `a = x + (a div n) * n` by (auto simp: field_simps)
  then have "(a + b) mod n = ((x + y) + ((a div n) + (b div n)) * n) mod n" 
    by simp
  also have "... = (x + y) mod n" 
    by auto
  finally show ?thesis by auto
qed