lemma manipulate_equation:
  fixes x y :: real
  assumes h0: "x + 2/x = y + 2/y"
    and h1: "x \<noteq> 0"
    and h2: "y \<noteq> 0"
    and h3: "x \<noteq> y"
  shows "x * y = 2"
proof -
  have "x + 2/x - (y + 2/y) = 0" using h0 by simp
  then have "x - y = (2/y - 2/x)" by (simp add: field_simps)
  have "x * y * (x - y) = 2 * (x - y)" using `x - y = (2/y - 2/x)` 
    by sos
  have "x * y = 2" 
  proof (cases "x - y = 0")
    case True
    then show ?thesis using h3 by auto
  next
    case False
    then show ?thesis using `x * y * (x - y) = 2 * (x - y)` by sos
  qed
  thus ?thesis by blast
qed