lemma mod_addition:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof -
  have "a = (a mod m) + m * (a div m)" by auto
  have "b = (b mod m) + m * (b div m)" by auto
  then have "a + b = ((a mod m) + (b mod m)) + m * ((a div m) + (b div m))" 
    by (auto simp: field_simps)
  then have "(a + b) mod m = (((a mod m) + (b mod m)) + m * ((a div m) + (b div m))) mod m" 
    by presburger
  also have "... = ((a mod m) + (b mod m)) mod m" 
    by auto
  finally show ?thesis by simp
qed