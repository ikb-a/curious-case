lemma mod_add:
  fixes a b m :: nat
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof -
  have "(a + b) mod m = ((a mod m) + (b mod m) + (a div m + b div m) * m) mod m"
    by presburger
  also have "... = ((a mod m) + (b mod m)) mod m"
    by auto
  finally show ?thesis by auto
qed