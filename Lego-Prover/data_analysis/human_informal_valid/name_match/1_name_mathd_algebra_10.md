# mathd_algebra_10

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
theorem mathd_algebra_10:
  "abs ((120::real) / 100 * 30 - 130 / 100 * 20) = 10"
proof -
  have "abs ((120::real) / 100 * 30 - 130 / 100 * 20) = abs (36 - 26)"
    by simp
  also have "... = 10"
    by simp
  finally show ?thesis
    by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_algebra_104.json`

In a 8 fluid ounce bottle of Vitamin Water, there are 125 calories. How many calories would be contained in a 12 fluid ounce bottle? Express your answer in decimal form. Show that it is 187.5.
### Informal Proof:
We know that there are 125 calories in 8 fluid ounces of Vitamin Water, so we can set up the proportion $\frac{125}{8}=\frac{x}{12}$, where $x$ is the number of calories contained in a 12 fluid ounce bottle. Solving for $x$, we find that $x=\left(\frac{125}{8}\right)(12)=187.5$ calories.
### Solution:
```isabelle
theorem mathd_algebra_104:
  fixes x :: real
  assumes h0 : "125/8 = x /12"
  shows "x = 375/2"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_algebra_104 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  imports Complex_Main
begin

(* no helper lemma are required *)

(* formal statement copy from the input *)
theorem mathd_algebra_104: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes x :: real
  assumes h0 : "125/8 = x /12"
  shows "x = 375/2"
proof -
  (* Step 2: Solve the proportion for x by cross-multiplying: $125 \times 12 = 8 \times x$. *)
  have eq1: "125 * 12 = 8 * x" using assms by auto
  (* Step 3: Simplify the equation: $1500 = 8x$. *)
  have eq2: "1500 = 8 * x" using eq1 by simp
  (* Step 4: Solve for x: $x = \frac{1500}{8} = \frac{375}{2} = 187.5$. *)
  have eq3: "x = 375/2" using eq2 by simp
  then show ?thesis by simp
qed

end
```
