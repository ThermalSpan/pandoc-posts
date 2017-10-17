---
extends: default.liquid
title: Infinite Expansions of Rational Numbers
---
# Infinite Expansions of Rational Numbers

## Introduction

It may seem odd at first that rational numbers can have an infinite decimal expansion. There are some examples that come to mind quickly though, for example

$$\frac{1}{3}=0.\overline{3}\text{.}$$

However, there are more interesting examples. For example $0.236\overline{151}$ is also a rational number. An iteresting idea to add into the mix is changing the radix of our expansion. For example, consider a radix of 3. Here, the integer 3 is represented as $10$. That means that $1/3$ in radix 3 has finite expansion.

$$\frac{1}{10} = 0.1$$

In this article we will explore infinite expansions of rational numbers and different under different radices. If you found any of the notation above confusing, or would like a refressher of relavent ideas, then please read the Prerequisite Knowledge section. Otherwise, continue onto the section on finite expansions.

## Requisite Knowledge

There are two related concepts that we need for this article: the concept of a radix and an expansion. Though we don't often think about it, even basic numbers are very powerful abstractions. Representing them in way that is readable and writable is not trivial!

In our daily lives we use the decimal system to represent numbers, which is said to have a base of $10$. In decimal notation we have the ten symbols to represent digits we know as $0, 1, 2, ..., 9$, Many folks are also familiar with binary , which has a base of $2$. Binary needs only two symbols, $0, 1$. As an iteresting side note, the ancient Sumerians used sexagesimal notation, which had a base of $60$. The notion of a base is often refered to as $radix$, which is my prefered term. A radix $\beta$ and its corresponding symbols map to a subset of the natural numbers $0, 1, ..., a_{\beta - 1}$. This mapping is important becuase it allows us to represent a number as a linear combination of powers of the radix using only the radix's symbols as coefficients.

One reason I prefer the term radix is that it pairs with another term we need to know, <i>radix point</i>. Many numbers we use need a 'radix point' to differentiate the integer component from the fractional component[^2]. We commonly refer to this as the decimal point when writing in decimal notation, but it generalizes to any radix. I used the radix point with a radix of $10$ and a radix of $3$ in the introductory example.

The sequence of symbols that we use to represent a number in a given base is called the number's <i>expansion</i>. The idea is that for a number $x \in \mathbb{R}$ with a finite expansion, there are some $m, n \in \mathbb{N}$ such that

$$
\begin{aligned}
x   &= \sum\limits_{i = -m}^n \beta^i a_i & (1) \\
    &= a_n a_{n-1} ... a_0 . a_{-1} ... a_{-m} & (2)
\end{aligned}
$$

In this case, line (1) shows us how $x$ is decomposed into a linear combination of powers of the radix. Line (2) demonstrates how we use the digits of the expansion, $a_i$, and the radix point in practice. It might seem obvious, but it is important to point out that changing the radix does not change underlying meaning of a number. Changing the radix merely changes the sequence of symbols we would use to express a number's expansion.

When a number has an infinite expansion, there are two possibilities.

* The expansion could "end" with a repeating sequence of digits. In this case we put a bar over the repeating sequence.
$$
\frac{1}{3} = 0.\overline{3}
$$

* The expansion could have no known pattern in which case we write out the digits we know, and either show that the number in question is approximatly equal to the expansion, or that the rest of the digits are unknown or remain to be enumerated.
$$
\begin{aligned}
x   &= 3.14... \\
    &\approx 3.14
\end{aligned}
$$

## Finite Expansions

We will start by exploring finite expansions. Any time you have seen a finite expansion, even long running decimals on a calculator, the fractional component can always be written as a numerator over some power of ten. For example

$$0.24234 = \frac{24234}{10^{-5}}\text{.}$$

It turns out that this relationship is both necassary and sufficient for a number to have a finite decimal expansion. We will detail that relationship for a general radix in Theorem 1.

#### Theorem 1

<i>Let $\beta \in \mathbb{Z}$ be a radix. A real number $x$ will have a finite expansion in $\beta$ if and only if there exists $k \in \mathbb{Z}$ and $\beta \in \mathbb{Z}$ such that $x = \frac{k}{\beta^m}$ for .</i>

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

#### Remark

Theorem 1 is a powerful relationship. However, it does not specify a unique encoding for $x$. Indeed the construction presented yeilds a series of possilbe representations

$$x = \frac{1}{10} = \frac{10}{100} = ... $$

Whileall the numbers in this series are rational, they are not fully reduced. What about the case where we have

$$ x = \frac{35}{100} = \frac{7}{20}$$

While the first fraction allows us to quickly apply Theorem 1, the second fraction does not. We use Theorem 1 to build a more specific relationship in Theorem 2.

#### Theorem 2

<i>Let $\beta \in \mathbb{Z}$ be a radix. Then, any rational number of the from $\frac{a}{b}$ with $\text{gcd}(a,b)=1$ will have a finite expansion with $\beta$ if and only if $\exists \ n \geq 0$ such that $b | \beta^n$.</i>[^1]

#### Proof

Assume $\frac{a}{b}$ has a finite expansion in $\beta$. Then by Theorem 2, for some $k \in \mathbb{Z} , m \in \mathbb{Z}$ we have

$$
\begin{aligned}
\frac{a}{b} &= \frac{k}{\beta^m}\\
a \cdot \beta^m &= b \cdot k \text{.}
\end{aligned}
$$

Since $\text{gcd}(a,b)=1$ we see that $b | \beta^m$.

Assume $b | \beta^n$. Then for some $q \in \mathbb{Z}$ we have $\beta^n = b\cdot q$. Therefore, $\frac{a}{b} = \frac{a\cdot q}{b \cdot q} = \frac{a \cdot q}{\beta^n}$. By Theorem 1 $\frac{a \cdot q}{\beta^n}$ will have a finite representation with $\beta$.

#### Corollary 2.1

<i>Let $\beta \in \mathbb{Z}$ be a radix. Then if $\frac{a}{b}$ with $\text{gcd}(a,b)=1$ has a finite expansion in $\beta$ then $b$ must share all its prime factors with $\beta$.</i>

#### Proof

If $b$ is to divide some power of $\beta$, then all of the prime factors of $b$ must be factors of $\beta$.

#### Remark

Rational numbers whose denominator do not share their prime factors with the radix will always have infinite expansions. This is a nice explanation for why $\frac{1}{3}$ or $\frac{1}{7}$ have infinite decimal representations.

## Infinite Expansions

#### Theorem 3

<i>If the expansion of a real number $x$ with radix $\beta$ is infinite but repeating, then $x$ is rational.</i>

#### Proof

Let $x =Z.a_1a_2...a_k \overline{d_1 d_2...d_n}$ be such an expansion, where $Z$ is the integer part of the expansion $a_i$ for $1 \leq i \leq k$ and $d_j$ for $1 \leq j \leq n$ are the digits of the expansion.

$$
\begin{aligned}
x &= Z.a_1a_2...a_k \overline{d_1 d_2...d_n} & (1)\\
\beta^k x &= Z \ a_1a_2...a_k.\overline{d_1 d_2...d_n} & (2)\\
\beta^{k+n} x &= Z \ a_1a_2...a_kd_1 d_2...d_n.\overline{d_1 d_2...d_n} & (3)\\
(\beta^{k+n} - \beta^k)x &= (Z \ a_1a_2...a_kd_1 d_2...d_n) - (Z \ a_1a_2...a_k) & (4)\\
x &= \frac{(Z \ a_1a_2...a_kd_1 d_2...d_n) - (Z \ a_1a_2...a_k)}{\beta^{k+n} - \beta^k} & (5)
\end{aligned}
$$

From line (1) to line (2) we move the radix point but multiplying both sides by the radix $k$ times. By subtracting line (2) from line (3) we can express $x$ as a fraction of two integers while also getting rid of the infinite tail in each line. By line (5) we see that $x$  can be expressed as the ratio of two integers, and is therefore a rational number.

## Worked Examples

[^1]:Based on reply by Arturo Magidin on [http://math.stackexchange.com/questions/126308/](http://math.stackexchange.com/questions/126308/). MathExchange requires non-formal attribution

[^2]: I realize that this definition assumes radices that are natural numbers. If you caught this, please assume that all radices throught the rest of the article are natural numbers.

