lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "a + 1 \<le> b"
proof -
  have "b > a" using assms by simp
  then show "a + 1 \<le> b" 
  proof (cases b)
    case 0
    then have "a < 0" using assms(1) by simp
    thus "a + 1 \<le> b" by simp
  next
    case (Suc n)
    then have "b = Suc n" and "a \<le> n" using assms by auto
    thus "a + 1 \<le> b" by auto
  qed
qed