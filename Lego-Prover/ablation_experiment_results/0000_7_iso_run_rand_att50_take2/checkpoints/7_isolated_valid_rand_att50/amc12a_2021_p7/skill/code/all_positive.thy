fun all_positive :: "real list \<Rightarrow> bool" where
"all_positive [] = True" |
"all_positive (h#t) = (h > 0 \<and> all_positive t)"