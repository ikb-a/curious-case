lemma sum_of_floors:
  fixes r :: real
  assumes "x + y = 546" and "x + 1 = y"
  shows "x = floor r"
proof -
  from assms have "x + (x + 1) = 546" by auto
  then have "2 * x + 1 = 546" by simp
  then have "2 * x = 545" by simp
  then have "x = 272.5" by (simp add: field_simps)
  let ?r = "x"
  have "floor ?r = floor 272.5" by (smt (verit) \<open>2 * x = 545\<close>)
  thus ?thesis by (smt (verit) assms(1) assms(2)) 
qed