lemma logarithm_base_change_extended:
  fixes a b c :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1" "c > 0" "c \<noteq> 1"
  shows "log b a = log a a / log a b" 
     and "log c a = log a a / log a c"
     and "log c b = log b b / log b c"
proof -
  have log_base_change_ab: "log b a = log a a / log a b" using assms by (metis log_base_change)
  have log_base_change_ac: "log c a = log a a / log a c" using assms by (metis log_base_change)
  have log_base_change_bc: "log c b = log b b / log b c" using assms by (metis log_base_change)
  show "log b a = log a a / log a b" by (simp add: log_base_change_ab)
  show "log c a = log a a / log a c" by (simp add: log_base_change_ac)
  show "log c b = log b b / log b c" by (simp add: log_base_change_bc)
qed