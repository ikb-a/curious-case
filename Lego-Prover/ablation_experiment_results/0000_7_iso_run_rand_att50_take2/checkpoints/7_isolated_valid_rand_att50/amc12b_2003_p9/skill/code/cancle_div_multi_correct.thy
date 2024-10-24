lemma cancle_div_multi_correct:
  fixes x :: real
  assumes "x > 0" "xs = a # b # cs"
  shows "cancle_div_multi (x#xs) xs = (let c = a + b / x in 
    (c * x - b) # cancle_div_multi xs (c#cs))"
proof -
  have "cancle_div_multi (x#xs) (a # b # cs) = (let c = a + b / x in 
    (c * x - b) # cancle_div_multi xs (c#cs))" 
    by (simp add: assms)
  then show ?thesis by (metis assms(2) mult_delta_right)
qed