lemma mod_add_multiple:
  fixes a b m n :: nat
  assumes "n > 0"
  shows "(a + b + n) mod m = ((a mod m) + (b mod m) + (n mod m)) mod m"
proof -
  have "(a + b + n) mod m = ((a + b) mod m + n) mod m" by presburger
  also have "... = (((a mod m) + (b mod m)) mod m + n) mod m" by presburger
  also have "... = ((a mod m) + (b mod m) + (n mod m)) mod m" by (metis mod_add_left_eq mod_add_right_eq)
  finally show ?thesis by auto
qed