lemma mod_add:
  fixes a b m :: nat
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof -
  have "a = (a div m) * m + (a mod m)" by auto
  have "b = (b div m) * m + (b mod m)" by auto
  then have "a + b = ((a div m) + (b div m)) * m + ((a mod m) + (b mod m))" by (auto simp: field_simps)
  then show ?thesis by auto
qed