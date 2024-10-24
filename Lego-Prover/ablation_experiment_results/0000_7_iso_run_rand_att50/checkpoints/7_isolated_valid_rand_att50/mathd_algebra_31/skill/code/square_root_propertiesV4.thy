lemma square_root_properties:
  fixes a b :: real
  assumes "a = b" "a \<ge> 0" "b \<ge> 0"
  shows "sqrt a = sqrt b"
proof -
  have "sqrt a = sqrt b" using assms(1) by simp
  thus ?thesis by (simp add: assms(2) assms(3))
qed