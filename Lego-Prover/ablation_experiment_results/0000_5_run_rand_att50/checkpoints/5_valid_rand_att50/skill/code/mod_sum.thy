lemma mod_sum:
  fixes a b :: nat
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof -
  have "a + b = (a mod m) + (b mod m) + m * ((a div m) + (b div m))" 
    by (auto simp: field_simps)
  then have "(a + b) mod m = ((a mod m) + (b mod m) + m * ((a div m) + (b div m))) mod m"
    by simp
  also have "... = ((a mod m) + (b mod m)) mod m"
    by auto
  finally show ?thesis by simp
qed