lemma mod_addition_properties:
  fixes a b c :: nat
  assumes "b > 0" "c > 0"
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"
proof -
  have "a + b = (a div c) * c + (a mod c) + (b div c) * c + (b mod c)"
    by auto
  then have "(a + b) mod c = ((a mod c) + (b mod c) + (a div c + b div c) * c) mod c" 
    by presburger
  also have "... = ((a mod c) + (b mod c)) mod c"
    by (simp add: add.commute)
  finally show ?thesis by auto
qed