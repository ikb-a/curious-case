lemma mod_add_general:
  fixes a b m :: nat
  shows "(a + b) mod m = (a mod m + b mod m) mod m"
proof -
  have "a = (a mod m) + (m * (a div m))" and "b = (b mod m) + (m * (b div m))"
    by auto
  then have "a + b = (a mod m + b mod m) + m * ((a div m) + (b div m))" by (auto simp: field_simps)
  thus ?thesis by auto
qed