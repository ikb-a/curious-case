lemma sum_of_floors:
  fixes r :: real
  assumes "x + y = 546" and "x + 1 = y"
  shows "x = floor r"
proof -
  have "y = x + 1" using assms(2) by simp
  from assms(1) have "x + (x + 1) = 546" 
    by (metis assms(2))
  have "2 * x + 1 = 546" by (metis \<open>x + (x + 1) = 546\<close> add.commute add.left_commute mult.commute mult_2_right)
  have "2 * x = 545" by (smt (verit) assms(1) assms(2))
  have "x = 272.5" by (smt (verit) \<open>2 * x = 545\<close>)
  have "floor r = 272" by (smt (verit) assms(1) assms(2))
  thus "x = floor r" by (smt (verit) assms(1) assms(2))
qed