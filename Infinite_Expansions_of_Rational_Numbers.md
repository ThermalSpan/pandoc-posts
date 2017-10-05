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

Assume $x$ has a finite expansion in $\beta$. Then for some $m \in \mathbb{Z}$ and $n \in \mathbb{Z}$ we have:
\begin{align*}
x &= \sum\limits_{i=-m}^n \beta^i a_i \\
x &= \frac{1}{\beta^m}\sum\limits_{i=0}^{n+m} \beta^i a_i
\end{align*}  Since the numerator is an integer $x$ is of the form  $\frac{k}{\beta^m}$.\\
Assume $x = \frac{k}{\beta^m}$. Since k is an integer, it will have a finite representation in any integer radix. Therefore for some $n$ we have:
\begin{align*}
k &= \sum\limits_{i=0}^n \beta^i a_i \\
\frac{k}{\beta^m} &= \sum\limits_{i=0}^n \beta^{i-m} a_i\\
\end{align*}
 This is a finite expansion of $x$ with radix $\beta$.

## Worked Examples

