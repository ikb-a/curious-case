theorem numbertheory_sqmod4_properties:
  fixes a :: int
  shows "(a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1) \<or> (a^2 mod 4 = 2) \<or> (a^2 mod 4 = 3)"
proof -
  obtain b::int where c0: "b = a mod 4" by auto
  have c1: "b \<ge> 0 \<and> b \<le> 3" 
    by (smt (verit) Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign c0 uminus_int_code(1) zle_add1_eq_le)
  hence c2: "a^2 mod 4 = b^2 mod 4" using c0
    by (smt (verit) power_mod)
  thus ?thesis
  proof (cases "b = 0")
    case True
    then have "a^2 mod 4 = 0" using c2 by auto
    thus ?thesis by auto
  next
    case c3: False
    then show ?thesis
    proof (cases "b = 1")
      case True
      then have "a^2 mod 4 = 1" using c2 by auto
      thus ?thesis by auto
    next
      case False
      have "b = 2 \<or> b = 3" using c1 c3 by (smt (verit) False)
      then show ?thesis
      proof (cases "b = 2")
        case True
        then have "a^2 mod 4 = 4 mod 4" by (simp add: c2)
        thus ?thesis by auto
      next
        case False
        have "b = 3" using c1 c3 False by (metis \<open>b = 2 \<or> b = 3\<close>)
        then have "a^2 mod 4 = 9 mod 4" by (simp add: c2)
        thus ?thesis by auto
      qed
    qed
  qed
qed