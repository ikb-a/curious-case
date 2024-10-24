lemma trivial_inequality:
  fixes a b :: real
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "a^2 >= 0" by auto
  have "b^2 >= 0" by auto
  then show ?thesis 
    using add_nonneg_nonneg[of "a^2" "b^2"] by auto
qed