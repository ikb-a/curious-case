lemma count_range_elements:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a..b} = b - a + 1"
proof -
  have "card {a..b} = b - a + 1" using assms
  proof (induction b)
    case 0
    then show ?case by auto
  next
    case (Suc b)
    then show ?case 
      using Suc.prems 
      by auto
  qed
  then show ?thesis by simp
qed