lemma floor_add:
  fixes x y :: real
  shows "floor (x + y) = floor x + floor y + (if (x + y) < (floor x + floor y) + 1 then 0 else 1)"
proof -
  have "floor x \<le> x" by auto
  have "floor y \<le> y" by auto
  have "floor x + floor y \<le> x + y" by (simp add: add_mono)
  moreover
  have "x < floor x + 1" by auto
  moreover
  have "y < floor y + 1" by auto
  ultimately have "x + y < (floor x + floor y) + 2" 
    by arith
  show ?thesis
  proof (cases "x + y < floor x + floor y + 1")
    case True
    then show ?thesis 
      by (smt (verit) floor_add floor_eq_iff linorder_not_less)
  next
    case False
    then have "floor x + floor y + 1 \<le> x + y" 
      by auto
    then show ?thesis 
      by (smt (verit) False add.commute floor_add floor_less_iff less_add_one)
  qed
qed