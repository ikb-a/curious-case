lemma mod_add_general:
  fixes a b c m :: nat
  assumes "a mod m = c" "b mod m = d"
  shows "(a + b) mod m = (c + d) mod m"
proof -
  have "a + b = (a mod m) + (b mod m) + m * (a div m + b div m)" 
    using assms by (auto simp: field_simps)
  then show ?thesis
    by (metis assms(1) assms(2) mod_add_cong mod_add_eq)
qed