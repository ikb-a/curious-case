lemma square_root_property:
  fixes a b :: real
  assumes "0 \<le> a" "0 \<le> b" "a = b"
  shows "sqrt a = sqrt b"
proof -
  have "sqrt a = sqrt b" using assms by simp
  then show ?thesis by simp
qed