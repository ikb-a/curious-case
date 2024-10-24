lemma mod_add:
  fixes a b c :: nat
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"
proof -
  have "a + b = (a mod c) + (b mod c) + c * ((a div c) + (b div c))"
    by (auto simp: field_simps)
  then have "(a + b) mod c = (((a mod c) + (b mod c)) + c * ((a div c) + (b div c))) mod c"
    by simp
  also have "... = ((a mod c) + (b mod c)) mod c"
  proof (cases "c * ((a div c) + (b div c)) mod c = 0")
    case True
    then show ?thesis
      by (simp add: mod_0)
  next
    case False
    then have "c * ((a div c) + (b div c)) mod c = 0"
      by (simp add: mod_mult_self1)
    then show ?thesis
      by (simp add: mod_add_eq)
  qed
  finally show ?thesis by simp
qed