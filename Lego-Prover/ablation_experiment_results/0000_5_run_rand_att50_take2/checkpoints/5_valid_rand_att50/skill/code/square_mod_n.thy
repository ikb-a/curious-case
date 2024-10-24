lemma square_mod_n:
  fixes a n :: int
  shows "(a^2) mod n = ((a mod n)^2) mod n"
proof -
  have "a mod n = a - (n * (a div n))" by (auto simp: field_simps)
  then show ?thesis
  proof (cases "n = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a^2 = (n * (a div n) + (a mod n))^2"
      by auto
    then have "(a^2) mod n = ((n * (a div n) + (a mod n))^2) mod n"
      by auto
    also have "... = ((a mod n)^2) mod n"
      by (metis calculation minus_div_mult_eq_mod power_mod)
    finally show ?thesis by simp
  qed
qed