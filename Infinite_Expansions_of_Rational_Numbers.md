---
extends: default.liquid
title: Infinite Expansions of Rational Numbers
---
# Infinite Expansions of Rational Numbers

## Introduction

It may seem odd at first that rational numbers can have an infinite representation. There are some examples that come to mind quickly, for example

$$\frac{1}{3}=0.\overline{3}\text{.}$$

However, there are more interesting examples. For example $0.236\overline{151}$ is also a rational number. In the first section I will explore some constructive theorems that will tells us about infinite representations of rational numbers. I will end the first section by showing that all repreating expansions of real numbers in a given radix are in rational. In the second section I will go through a couple examples on how to use these theorems to find a simple fractional representation of several repeating infinite expansions.

## Results Concerning Infinite Expansions

#### Theorem 1

<i>Let $\beta \in \mathbb{Z}$ be a radix. A real number $x$ will have a finite expansion in $\beta$ if and only if $x$ is of the form $\frac{k}{\beta^m}$ for $k \in \mathbb{Z}$ and $\beta \in \mathbb{Z}$.</i>

#### Proof

Assume $x$ has a finite expansion in $\beta$. Then for some $m \in \mathbb{Z}$ and $n \in \mathbb{Z}$ we have

$$
\begin{aligned}
x &= \sum\limits_{i=-m}^n \beta^i a_i \\
x &= \frac{1}{\beta^m}\sum\limits_{i=0}^{n+m} \beta^i a_i\text{.}
\end{aligned}
$$

Since the numerator is an integer $x$ is of the form  $\frac{k}{\beta^m}$.

Assume $x = \frac{k}{\beta^m}$. Since k is an integer, it will have a finite representation in any integer radix. Therefore for some $n$ we have

$$
\begin{aligned}
k &= \sum\limits_{i=0}^n \beta^i a_i \\
\frac{k}{\beta^m} &= \sum\limits_{i=0}^n \beta^{i-m} a_i\text{.}
\end{aligned}
$$

This is a finite expansion of $x$ with radix $\beta$.

#### Theorem 2

<i>Let $\beta \in \mathbb{Z}$ be a radix. Then, any rational number of the from $\frac{a}{b}$ with $\text{gcd}(a,b)=1$ will have a finite expansion with $\beta$ if and only if $\exists \ n \geq 0$ such that $b | \beta^n$.</i>[^1]

#### Proof

Assume $\frac{a}{b}$ has a finite expansion in $\beta$. Then by theorem (2.1), for some $k \in \mathbb{Z} , m \in \mathbb{Z}$ we have

$$
\begin{aligned}
\frac{a}{b} &= \frac{k}{\beta^m}\\
a \cdot \beta^m &= b \cdot k \text{.}
\end{aligned}
$$

Since $\text{gcd}(a,b)=1$ we see that $b | \beta^m$.

Assume $b | \beta^n$. Then for some $q \in \mathbb{Z}$ we have $\beta^n = b\cdot q$. Therefore, $\frac{a}{b} = \frac{a\cdot q}{b \cdot q} = \frac{a \cdot q}{\beta^n}$. By theorem 1 $\frac{a \cdot q}{\beta^n}$ will have a finite representation with $\beta$.

#### Corollary 2.1

<i>Let $\beta \in \mathbb{Z}$ be a radix. Then if $\frac{a}{b}$ with $\text{gcd}(a,b)=1$ has a finite expansion in $\beta$ then $b$ must share all its prime factors with $\beta$.</i>

#### Proof

If $b$ is to divide some power of $\beta$, then all of the prime factors of $b$ must be factors of $\beta$.

#### Remark

Rational numbers whose denominator do not share their prime factors with the radix will always have infinite expansions. This is a nice explanation for why $\frac{1}{3}$ or $\frac{1}{7}$ have infinite decimal representations.

#### Theorem 3

<i>If the expansion of a real number $x$ with radix $\beta$ is infinite but repeating, then $x$ is rational.</i>

#### Proof

Let $x =Z.a_1a_2...a_k \overline{d_1 d_2...d_n}$ be such an expansion, where $Z$ is the integer part of the expansion $a_i$ for $1 \leq i \leq k$ and $d_j$ for $1 \leq j \leq n$ are the digits of the expansion.

$$
\begin{aligned}
x &= Z.a_1a_2...a_k \overline{d_1 d_2...d_n} \\
\beta^k x &= Z \ a_1a_2...a_k.\overline{d_1 d_2...d_n}\\
\beta^{k+n} x &= Z \ a_1a_2...a_kd_1 d_2...d_n.\overline{d_1 d_2...d_n}\\
(\beta^{k+n} - \beta^k)x &= (Z \ a_1a_2...a_kd_1 d_2...d_n) - (Z \ a_1a_2...a_k)\\
x &= \frac{(Z \ a_1a_2...a_kd_1 d_2...d_n) - (Z \ a_1a_2...a_k)}{\beta^{k+n} - \beta^k}
\end{aligned}
$$

From line (1) to line (2) we move the radix point but multiplying both sides by the radix $k$ times. By subtracting line (2) from line (3) we can express $x$ as a fraction of two integers while also getting rid of the infinite tail in each line. By line (5) we see that $x$  can be expressed as the ratio of two integers, and is therefore a rational number.

## Worked Examples

[^1]:Based on reply by Arturo Magidin on [http://math.stackexchange.com/questions/126308/](http://math.stackexchange.com/questions/126308/). MathExchange requires non-formal attribution

