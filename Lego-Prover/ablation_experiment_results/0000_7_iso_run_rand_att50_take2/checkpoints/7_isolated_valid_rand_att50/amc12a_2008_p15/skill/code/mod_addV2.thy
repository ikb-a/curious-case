lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof -
  have "a + b = (a mod m) + (b mod m) + (a div m + b div m) * m"
    by (auto simp: field_simps)
  then have "(a + b) mod m = ((a mod m) + (b mod m) + (a div m + b div m) * m) mod m"
    by simp
  also have "... = ((a mod m) + (b mod m)) mod m"
    by auto
  finally show ?thesis by simp
qed