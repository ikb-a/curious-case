lemma congruence_properties:
  fixes a b c d m :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis assms(1) assms(2) mod_by_0)
next
  case False
  then have "m > 0" by simp
  have "a = (a div m) * m + b" using assms(1) by auto
  have "c = (c div m) * m + d" using assms(2) by auto
  have "a + c = ((a div m) + (c div m)) * m + (b + d)"
    by (smt (verit) \<open>a = a div m * m + b\<close> \<open>c = c div m * m + d\<close> ab_semigroup_add_class.add_ac(1) add.commute combine_common_factor group_cancel.add1)
  then have "(a + c) mod m = (((a div m) + (c div m)) * m + (b + d)) mod m"
    by simp
  also have "... = (b + d) mod m"
    by auto
  finally show ?thesis
    by simp
qed