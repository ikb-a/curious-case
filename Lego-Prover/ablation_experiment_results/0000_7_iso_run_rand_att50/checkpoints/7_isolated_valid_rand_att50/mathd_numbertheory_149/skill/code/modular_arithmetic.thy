lemma modular_arithmetic:
  fixes a b c :: nat
  assumes "a mod b = c"
  shows "\<exists>k. a = b * k + c"
proof -
  have "a = b * (a div b) + a mod b"
    by auto 
  then show ?thesis
    using assms by auto
qed