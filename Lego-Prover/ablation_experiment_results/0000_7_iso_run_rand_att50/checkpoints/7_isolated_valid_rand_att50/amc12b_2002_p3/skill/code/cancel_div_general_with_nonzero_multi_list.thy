fun cancel_div_general_with_nonzero_multi_list :: "real list \<Rightarrow> real list \<Rightarrow> real list" where
  "cancel_div_general_with_nonzero_multi_list [] _ = []" |
  "cancel_div_general_with_nonzero_multi_list _ [] = []" |
  "cancel_div_general_with_nonzero_multi_list (x # xs) (a # b # c # bs) = 
     (if x \<noteq> 0 then 
        (let new_val = a * x + b in 
        new_val # cancel_div_general_with_nonzero_multi_list xs (c # bs))
     else 
        cancel_div_general_with_nonzero_multi_list xs (c # bs))"