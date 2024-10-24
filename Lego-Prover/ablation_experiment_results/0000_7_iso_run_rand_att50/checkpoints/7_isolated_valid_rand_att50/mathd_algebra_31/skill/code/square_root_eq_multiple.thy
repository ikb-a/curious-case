lemma square_root_eq_multiple:
  fixes a b :: real
  assumes "a = b" and "c = d"
  shows "sqrt a = sqrt b \<and> sqrt c = sqrt d"
  using square_root_eq_general[OF assms(1)] square_root_eq_general[OF assms(2)] by auto