lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a > 0" "b < a" "c > 0"
  shows "(b + c) mod a = ((b mod a) + (c mod a)) mod a"
proof -
  let ?b_mod_a = "b mod a"
  let ?c_mod_a = "c mod a"
  have "b = ?b_mod_a + (b div a) * a" 
    by auto
  then have "b + c = (?b_mod_a + (b div a) * a) + c"
    by simp
  have "c = ?c_mod_a + (c div a) * a"
    by auto
  then have "b + c = (?b_mod_a + (b div a) * a) + (?c_mod_a + (c div a) * a)"
    by simp
  then have "b + c = (?b_mod_a + ?c_mod_a) + ((b div a) + (c div a)) * a"
    by (auto simp: field_simps)
  hence "(b + c) mod a = ((?b_mod_a + ?c_mod_a) + ((b div a) + (c div a)) * a) mod a"
    by simp
  also have "... = ((?b_mod_a + ?c_mod_a) mod a)"
    by (simp add: mod_add_eq)
  finally show ?thesis by (simp add: add.commute)
qed