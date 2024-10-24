# solve_linear_equation

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
lemma solve_linear_equation:
  fixes a b x :: real
  assumes "a*x + b = c"
    and "a \<noteq> 0"
  shows "x = (c - b) / a"
  using assms by auto
```


## Usage 1 of 1:
### Problem:
Task name: `amc12b_2020_p5.json`

Teams $A$ and $B$ are playing in a basketball league where each game results in a win for one team and a loss for the other team. Team $A$ has won $\tfrac{2}{3}$ of its games and team $B$ has won $\tfrac{5}{8}$ of its games. Also, team $B$ has won $7$ more games and lost $7$ more games than team $A.$ How many games has team $A$ played?  $\textbf{(A) } 21 \qquad \textbf{(B) } 27 \qquad \textbf{(C) } 42 \qquad \textbf{(D) } 48 \qquad \textbf{(E) } 63$ Show that it is \textbf{(C) } 42.
### Informal Proof:
Suppose team $A$ has played $g$ games in total so that it has won $\frac23g$ games. It follows that team $B$ has played $g+14$ games in total so that it has won $\frac23g+7$ games.  We set up and solve an equation for team $B$'s win ratio: $\begin{align*} \frac{\frac23g+7}{g+14}&=\frac58 \\ \frac{16}{3}g+56&=5g+70 \\ \frac13g&=14 \\ g&=\textbf{(C) } 42. \end{align*}$
### Solution:
```isabelle
theorem amc12b_2020_p5:
  fixes a b :: nat
  assumes "(5::real) / 8 * b - 2 / 3 * a = 7"
    and "of_nat b - (5::real) / 8 * b - (a - 2 / 3 * a) = 7"
  shows "a = 42"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory amc12b_2020_p5
  imports Complex_Main
begin

(* lemma 1: a lemma for solving linear equations with real coefficients, which is useful for step  *)
lemma solve_linear_equation: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes a b x :: real
  assumes "a*x + b = c"
    and "a \<noteq> 0"
  shows "x = (c - b) / a"
  using assms by auto

(* formal statement copy from the input *)
theorem amc12b_2020_p5:
  fixes a b :: nat
  assumes "(5::real) / 8 * b - 2 / 3 * a = 7"
    and "of_nat b - (5::real) / 8 * b - (a - 2 / 3 * a) = 7"
  shows "a = 42"
proof -
  (* Step 1: Let \(g\) represent the total number of games played by team A. *)
  define g where "g = a"
  
  (* Step 2: Use the given information to set up an equation for the win ratio of team B: \(\frac{{\frac{2}{3}g + 7}}{{g + 14}} = \frac{5}{8}\). *)
  have eq1: "(2/3) * g + 7 = (5/8) * (g + 14)"
    using assms(1) g_def by (simp add: algebra_simps)

  (* Step 3: Solve the equation to find \(g = 42\). *)
  have eq2: "(2/3) * g + 7 = (5/8) * g + 35/4"
    using eq1 by (simp add: distrib_right)
  then have eq3: "(2/3) * g - (5/8) * g = 35/4 - 7"
    by (simp add: algebra_simps)
  then have eq4: "(16/24) * g - (15/24) * g = 7/4"
    by (simp add: algebra_simps)

  (* Step 4: Conclude that team A has played 42 games. *)
  have eq5: "(1/24) * g = 7/4"
    using eq4 by (simp add: divide_simps)
  then have eq6: "g = 42"
    by (simp add: divide_simps)

  then show "a = 42"
    using g_def by simp
qed

end
```
