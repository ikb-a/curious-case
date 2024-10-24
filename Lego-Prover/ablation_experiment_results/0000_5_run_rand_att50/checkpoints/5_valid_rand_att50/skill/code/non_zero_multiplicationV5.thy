lemma non_zero_multiplication:
  fixes a b c :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a * c = b * c"
proof -
  have "a * c = b * c" 
  proof -
    from assms(1) have "a = b" by auto
    then show ?thesis 
      by (metis assms(1) mult.commute) 
  qed
  thus ?thesis by auto
qed