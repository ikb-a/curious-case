lemma square_modulo_4:
  fixes a :: int
  shows "((a mod 4)^2 mod 4 = 0) \<or> ((a mod 4)^2 mod 4 = 1)"
proof -
  obtain b::int where c0: "b = a mod 4" by auto
  have c1: "b \<ge> 0 \<and> b \<le> 3" by (smt (verit) Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign c0 uminus_int_code(1) zle_add1_eq_le)
  hence c2: "b^2 mod 4 = (b mod 4)^2 mod 4" by (simp add: power_mod)
  show ?thesis
  proof (cases "b=0")
    case True
    have "b^2 mod 4 = 0" using True c2 by auto
    then show ?thesis by (metis True c0)
  next
    case c3: False
    then show ?thesis
    proof (cases "b=1")
      case True
      have "b^2 mod 4 = 1" using True c2 by auto
      then show ?thesis by (metis True c0)
    next
      case False
      have "b = 2 \<or> b = 3" using c1 c3 by (smt (verit) False)
      then show ?thesis
      proof (cases "b=2")
        case True
        have "b^2 mod 4 = 4 mod 4" using c2 True by auto
        also have "... = 0" by simp
        finally show ?thesis by (metis c0 numbertheory_sqmod4in01d)
      next
        case False
        have "b = 3" using c1 c3 False by (metis \<open>b = 2 \<or> b = 3\<close>)
        hence "b^2 mod 4 = 9 mod 4" using c2 by auto
        also have "... = 1" by simp
        finally show ?thesis by (metis \<open>9 mod 4 = 1\<close> \<open>b\<^sup>2 mod 4 = 9 mod 4\<close> c0)
      qed
    qed
  qed
qed