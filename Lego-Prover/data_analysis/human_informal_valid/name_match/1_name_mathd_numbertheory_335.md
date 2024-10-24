# mathd_numbertheory_335, mathd_numbertheory_335_lemma0

Tasks where a provided skill's *name* is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
theorem mathd_numbertheory_335:
  fixes n :: nat
  assumes h0 : "n mod 7 = 5"
  shows "(5 * n) mod 7 = 4"
  using assms by presburger

lemma mathd_numbertheory_335_lemma0:
  fixes n :: nat
  assumes "n mod 7 = 5"
  shows "(5 * n) mod 7 = 4"
  using assms by presburger
```


## Usage 1 of 1:
### Problem:
Task name: `mathd_numbertheory_370.json`

If $n$ gives a remainder of 3 when divided by 7, then what remainder does $2n+1$ give when divided by 7? Show that it is 0.
### Informal Proof:
If $n$ gives a remainder of 3 when divided by 7, then $n = 7k+3$ for some integer $k$. Therefore, $2n+1 = 2(7k+3)+1 = 14k+6+1 = 14k+7 = 7(2k+1)$. Since $7(2k+1)$ is divisible by 7, the remainder when $2n+1$ is divided by 7 is $0$.
### Solution:
```isabelle
theorem mathd_numbertheory_370:
  fixes n :: nat
  assumes h0 : "n mod 7 = (3::nat)"
  shows "(2*n+1) mod 7 = (0::nat)"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_370
  imports Complex_Main
begin

(* lemma 1 *)
lemma mathd_numbertheory_335_lemma0: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n :: nat
  assumes "n mod 7 = 5"
  shows "(5 * n) mod 7 = 4"
  using assms by presburger

theorem mathd_numbertheory_370:
  fixes n :: nat
  assumes h0 : "n mod 7 = (3::nat)"
  shows "(2*n+1) mod 7 = (0::nat)"
proof -
  (* Step 1: Assume that $n$ gives a remainder of 3 when divided by 7, i.e., $n = 7k + 3$ for some integer $k$. *)
  have "n = 7 * (n div 7) + (n mod 7)" by arith
  also have "... = 7 * (n div 7) + 3" using h0 by simp
  finally have c0: "n = 7 * (n div 7) + 3" by auto
  
  (* Step 2: Substitute the value of $n$ into the expression $2n+1$ to get $2(7k+3)+1$. *)
  have "(2*n+1) = 2*(7*(n div 7) + 3) + 1" using c0 by simp
  then have c1: "(2*n+1) = 14*(n div 7) + 7" by simp
  
  (* Step 3: Simplify the expression $2(7k+3)+1$ to get $14k+6+1$. *)
  have "(2*n+1) = 14*(n div 7) + 7" using c1 by simp
  then have "(2*n+1) = 7*(2*(n div 7)) + 7" by simp
  then have "(2*n+1) = 7*((2*(n div 7)) + 1)" by simp
  
  (* Step 4: Further simplify $14k+6+1$ to get $14k+7$. *)
  then have "(2*n+1) = 7*(2*(n div 7) + 1)" by simp
  then have c2: "(2*n+1) = 7*((2*n+1) div 7)" by simp
  
  (* Step 5: Rewrite $14k+7$ as $7(2k+1)$. *)
  have "(2*n+1) = 7*((2*n+1) div 7)" using c2 by simp
  
  (* Step 6: Note that $7(2k+1)$ is divisible by 7. *)
  then have c3: "(2*n+1) mod 7 = 0" by simp
  
  (* Step 7: Conclude that the remainder when $2n+1$ is divided by 7 is 0. *)
  then show ?thesis using c3 by blast
qed

end
```
