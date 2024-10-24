# mathd_numbertheory_582_lemma1

Tasks where a provided skill is reproduced verbatim

Frequency: 2

Lemma:
```isabelle
lemma mathd_numbertheory_582_lemma1:
  fixes n :: nat
  shows "((n + 4) + (n + 6) + (n + 8)) = (3 * n) + 18"
  by simp
```


## Usage 1 of 2:
### Problem:
Task name: `mathd_numbertheory_582.json`

If $n$ is a multiple of three, what is the remainder when $(n + 4) + (n + 6) + (n + 8)$ is divided by $9$? Show that it is 0.
### Informal Proof:
We see that $(n + 4) + (n + 6) + (n + 8) = 3n + 18.$ We can see that this must be a multiple of $9,$ since $18$ is a multiple of $9$ and $3n$ is as well, since we are given that $n$ is a multiple of $3.$ Therefore, our answer is $0.$
### Solution:
```isabelle
theorem mathd_numbertheory_582:
  fixes n :: nat
  assumes "0 < n"
    and "3 dvd n"
  shows "((n + 4) + (n + 6) + (n + 8)) mod 9 = 0"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_582
  imports Complex_Main
begin

(* lemma 1. A lemma is useful for step 2. *)
lemma mathd_numbertheory_582_lemma1: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n :: nat
  shows "((n + 4) + (n + 6) + (n + 8)) = (3 * n) + 18"
  by simp

(* lemma 2. A lemma is useful for step 3. *)
lemma mathd_numbertheory_582_lemma2:
  fixes n :: nat
  assumes "3 dvd n"
  shows "9 dvd (3 * n)"
  using assms
  by auto

(* lemma 3. A lemma is useful for step 4. *)
lemma mathd_numbertheory_582_lemma3:
  fixes n :: nat
  assumes "3 dvd n"
  shows "(3 * n) mod 9 = 0"
proof -
  obtain k where "n = 3 * k" using assms dvdE by blast
  then have "(3 * n) mod 9 = 0" by simp
  then show ?thesis by simp
qed

(* formal statement copy from the input *)
theorem mathd_numbertheory_582:
  fixes n :: nat
  assumes "0 < n"
    and "3 dvd n"
  shows "((n + 4) + (n + 6) + (n + 8)) mod 9 = 0"
proof -
  have "((n + 4) + (n + 6) + (n + 8)) mod 9 = ((3 * n) + 18) mod 9"
    using mathd_numbertheory_582_lemma1 by simp %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  also have "... = (3 * n) mod 9 + 18 mod 9"
    using mod_add_eq by simp
  also have "... = 0 + 18 mod 9"
    using assms(2) mathd_numbertheory_582_lemma2 mathd_numbertheory_582_lemma3 by simp
  also have "... = 0"
    by simp
  finally show ?thesis by simp
qed

end
```


## Usage 2 of 2:
### Problem:
Task name: `mathd_numbertheory_1124.json`

The four-digit number $\underline{374n}$ is divisible by 18. Find the units digit $n$. Show that it is 4.
### Informal Proof:
We know that the prime factorization of 18 is $2\cdot 3^2$, so in order for the four digit number to be divisible by 18 it must also be divisible by 9 and 2. In order for a number to be divisible by 9, the sum of its digits must be divisible by 9 as well. Thus, $3+7+4+n$, or $14+n$, must be divisible by 9. Since 18 is the smallest multiple of 9 that is greater than 10, $14+n=18$, and $n=18-14=4$.
### Solution:
```isabelle
theorem mathd_numbertheory_1124:
  fixes n :: nat
  assumes "n \<le> 9"
    and "18 dvd 374 * 10 + n"
  shows "n = 4"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory mathd_numbertheory_1124
  imports Complex_Main
begin

(* useful skill 1 *)
lemma mathd_numbertheory_582_lemma1: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes n :: nat
  shows "((n + 4) + (n + 6) + (n + 8)) = (3 * n) + 18"
  by simp

(* useful skill 2 *)
theorem mathd_numbertheory_293:
  fixes n :: nat
  assumes "n \<le> 9"
    and "11 dvd 20 * 100 + 10 * n + 7" 
  shows "n = 5"
proof -
  have "n = 5" using assms by presburger
  then show ?thesis by simp
qed

(* useful skill 3 *)
lemma mathd_numbertheory_582_lemma3:
  fixes n :: nat
  assumes "3 dvd n"
  shows "(3 * n) mod 9 = 0"
proof -
  obtain k where "n = 3 * k" using assms dvdE by blast
  then have "(3 * n) mod 9 = 0" by simp
  then show ?thesis by simp
qed

lemma mathd_numbertheory_582_lemma2:
  fixes n :: nat
  assumes "3 dvd n"
  shows "9 dvd (3 * n)"
  using assms
  by auto

theorem mathd_numbertheory_582:
  fixes n :: nat
  assumes "0 < n"
    and "3 dvd n"
  shows "((n + 4) + (n + 6) + (n + 8)) mod 9 = 0"
proof -
  have "((n + 4) + (n + 6) + (n + 8)) mod 9 = ((3 * n) + 18) mod 9"
    using mathd_numbertheory_582_lemma1 by simp %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  also have "... = (3 * n) mod 9 + 18 mod 9"
    using mod_add_eq by presburger
  also have "... = 0 + 18 mod 9"
    using assms(2) mathd_numbertheory_582_lemma2 mathd_numbertheory_582_lemma3 by simp
  also have "... = 0"
    by simp
  finally show ?thesis by simp
qed

(* formal statement copy from the input*)
theorem mathd_numbertheory_1124:
  fixes n :: nat
  assumes "n \<le> 9"
    and "18 dvd 374 * 10 + n"
  shows "n = 4"
proof -
  have "n = 4" using assms mathd_numbertheory_582 by simp
  then show ?thesis by simp
qed

end
```
