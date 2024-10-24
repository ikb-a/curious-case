theorem numbertheory_sqmod4in01d:
  fixes a :: int
  shows "(a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1)"
proof -
  obtain b::int where c0: "b = a mod 4" by auto
  have c1: "b \<ge> 0 \<and> b \<le> 3" by (smt (verit) Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign c0 uminus_int_code(1) zle_add1_eq_le)
  have c2: "a^2 mod 4 = (a mod 4)^2 mod 4" using square_mod4 by auto
  show ?thesis
  proof (cases "b=0")
    case True
    have "a^2 mod 4 = 0" using True c2 by (metis bits_mod_0 c0 zero_power2)
    then show ?thesis by auto
  next
    case c3: False
    then show ?thesis
    proof (cases "b=1")
      case True
      have "a^2 mod 4 = 1" using True c2 by (metis c0 dbl_simps(3) dbl_simps(5) mod_mod_trivial one_power2)
      then show ?thesis by auto
    next
      case False
      have "b = 2 \<or> b = 3" using c1 c3 by (smt (verit) False)
      then show ?thesis
      proof (cases "b=2")
        case True
        have "a^2 mod 4 = 2^2 mod 4" using c2 True by (smt (verit) c0)
        also have "... = 0" by simp
        finally show ?thesis by auto
      next
        case False
        have "b = 3" using c1 c3 False by (metis \<open>b = 2 \<or> b = 3\<close>)
        hence "a^2 mod 4 = 3^2 mod 4" using c2 by (metis c0)
        also have "... = 1" by simp
        finally show ?thesis by auto
      qed
    qed
  qed
qed