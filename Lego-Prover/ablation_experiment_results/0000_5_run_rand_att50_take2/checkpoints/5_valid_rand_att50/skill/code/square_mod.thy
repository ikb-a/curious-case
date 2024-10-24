lemma square_mod:
  fixes a :: int and n :: int
  shows "(a mod n)^2 mod n = (a^2 mod n)"
proof -
  let ?d = "a mod n"
  have "a = n * (a div n) + ?d" by auto
  then have "a^2 = (n * (a div n) + ?d)^2" by simp
  also have "... = (n * (a div n))^2 + 2 * (n * (a div n)) * ?d + ?d^2" by (smt (verit) power2_sum)
  also have "... = n^2 * (a div n)^2 + 2 * n * (a div n) * ?d + ?d^2" by (simp add: power2_eq_square)
  finally have "a^2 = n^2 * (a div n)^2 + 2 * n * (a div n) * ?d + ?d^2" .
  then have "a^2 mod n = (n^2 * (a div n)^2 + 2 * n * (a div n) * ?d + ?d^2) mod n" by simp
  then have "a^2 mod n = (?d^2 mod n)" by (metis minus_div_mult_eq_mod power_mod)
  moreover have "(?d)^2 mod n = (?d^2 mod n)" by simp
  ultimately show "(a mod n)^2 mod n = (a^2 mod n)" by simp
qed