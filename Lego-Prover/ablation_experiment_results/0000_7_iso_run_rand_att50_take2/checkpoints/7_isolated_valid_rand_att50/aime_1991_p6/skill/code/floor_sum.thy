lemma floor_sum:
  fixes r :: real and k :: real
  assumes "n > 0"
  shows "floor (r + k) = floor r + floor k + (if r + k < floor r + floor k + 1 then 0 else 1)"
proof -
  have "floor r \<le> r" by auto
  have "floor k \<le> k" by auto
  have "floor r + floor k \<le> r + k" by (simp add: add_mono)
  moreover
  have "r < floor r + 1" by auto
  have "k < floor k + 1" by auto
  ultimately have "r + k < (floor r + floor k) + 2" 
    by arith
  show ?thesis
  proof (cases "r + k < floor r + floor k + 1")
    case True
    then show ?thesis 
      by (smt (verit, best) floor_add floor_eq_iff linorder_not_less)
  next
    case False
    then have "floor r + floor k + 1 \<le> r + k" 
      by auto
    then show ?thesis 
      by (smt (verit, best) False add.commute floor_add floor_less_iff less_add_one)
  qed
qed