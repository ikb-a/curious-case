lemma mod_add_general:
  fixes a b m :: nat
  assumes "m > 0"
  shows "(a + b) mod m = (a mod m + b mod m) mod m"
proof -
  have "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
    using assms by presburger
  thus ?thesis by auto
qed