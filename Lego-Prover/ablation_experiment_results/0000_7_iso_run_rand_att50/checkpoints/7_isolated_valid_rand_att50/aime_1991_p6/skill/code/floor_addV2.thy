lemma floor_add:
  fixes r :: real and k :: real
  shows "floor (r + k) = floor r + floor k + (if r + k < floor r + floor k + 1 then 0 else 1)"
proof -
  have "floor (r + k) = floor r + floor k + (if r + k < floor r + floor k + 1 then 0 else 1)"
  proof (cases "r + k < floor r + floor k + 1")
    case True
    then show ?thesis 
      by (smt (verit) add_cancel_right_right floor_add floor_eq_iff leD)
  next
    case False
    then show ?thesis 
      by (smt (verit) add1_zle_eq floor_add floor_less_iff)
  qed
  thus ?thesis by simp
qed