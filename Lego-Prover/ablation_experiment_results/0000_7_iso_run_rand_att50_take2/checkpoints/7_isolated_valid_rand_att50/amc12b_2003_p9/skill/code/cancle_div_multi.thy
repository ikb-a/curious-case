fun cancle_div_multi :: "real list \<Rightarrow> real list \<Rightarrow> real list" where
  "cancle_div_multi [] _ = []" |
  "cancle_div_multi _ [] = []" |
  "cancle_div_multi (x#xs) (a#b#cs) = 
    (let c = a + b / x in 
    (c * x - b) # cancle_div_multi xs (c#cs))"