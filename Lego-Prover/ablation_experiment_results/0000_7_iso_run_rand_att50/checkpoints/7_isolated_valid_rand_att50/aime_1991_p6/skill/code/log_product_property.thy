lemma log_product_property:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "ln (a * b) = ln a + ln b"
proof -
  have "ln (a * b) = ln a + ln b" 
    by (metis assms(1) assms(2) ln_mult)
  then show ?thesis by simp
qed