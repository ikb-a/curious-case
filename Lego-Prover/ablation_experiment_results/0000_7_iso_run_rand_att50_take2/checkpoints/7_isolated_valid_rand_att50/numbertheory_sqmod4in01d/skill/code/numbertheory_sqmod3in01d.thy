theorem numbertheory_sqmod3in01d:
  fixes a :: int
  shows "(a^2 mod 3 = 0) \<or> (a^2 mod 3 = 1)"
proof -
  obtain b::int where c0: "b = a mod 3" by auto
  have c1: "b \<ge> 0 \<and> b \<le> 2"
    by (smt (verit) Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign c0 uminus_int_code(1) zle_add1_eq_le)
  hence c2: "a^2 mod 3 = b^2 mod 3" using c0
    by (smt (verit) power_mod)
  then show ?thesis
  proof (cases "b=0")
    case True
    have "a^2 mod 3 = 0" using True c2 by auto
    then show ?thesis by auto
  next
    case c3: False
    then show ?thesis
    proof (cases "b=1")
      case True
      have "a^2 mod 3 = 1" using True c2 by auto
      then show ?thesis by auto
    next
      case False
      have "b = 2" using c1 c3 by (smt (verit) False)
      hence "a^2 mod 3 = 2^2 mod 3" using c2 by auto
      also have "... = 1" by simp
      finally show ?thesis by auto
    qed
  qed
qed