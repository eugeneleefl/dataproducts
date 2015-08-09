Developing Data Products Course Assignment
===
author: Eugene Lee
date: Sun Aug 09 10:56:03 2015
font-family: 'Arial'
transition: zoom

Overview
===

- Introduction to Central Limit Theorem
- Simulation of Central Limit Theorem
- Summary

Introduction to Central Limit Theorem
===

- Central Limit Theorem (CLT) states that, given certain conditions, the mean of a sufficiently large number of iid random variables, will be approximately normally distributed, regardless of the underlying distribution. 
- You can read more about it from Brian Caffo's book on [statistical inference](https://github.com/bcaffo/LittleInferenceBook/blob/master/manuscript/07_asymptotics.md). Using the Shiny App, we will demonstrate this by simulating a number of exponential variables.

Simulating Central Limit Theorem
===
- In the shiny app, adjust the sliders to create the cumulative means for exponential random variables with n = 40.
- As the number of means increases, the cumulative mean tends towards the theoretical mean. 
- For example, for 1000 means, the cumulative plot will look something like this:

***



![plot of chunk cumplot1](presentation-figure/cumplot1-1.png) 


Summary
===
- CLT states that averages are approximately normal, with distributions centered at the $\mu$ with standard deviation equal to $\sigma$.
- CLT is useful as it gives us a way to approximate distributions for emprical data in which we do not know the underlying distribution, given some valid assumptions.
