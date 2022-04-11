# Supervised Learning

In this lecture we focus on supervised learning problems.

We will explore the two main classes of such models: _regression_ and _classification_ tasks.

<p align="center">
    <img width="547" src="https://imgs.xkcd.com/comics/machine_learning.png">
</p>

## [Regression problems](https://github.com/oscar-defelice/DSAcademy-lectures/blob/master/Lectures_src/03.Supervised_learning/01.Regression.ipynb)

These are commonly referred to the prediction of _continuous_ values. We will frame the problem as a supervised learning task building training couples and training a model on them.

## Classification problems

These are the classical "assign objects to sets" problems. We are going to see how to predict probabilities of belonging to a certain class and defining a _decision rule_ for the assignment.

### [Logistic Regression 🎚️](https://github.com/oscar-defelice/DSAcademy-lectures/blob/master/Lectures_src/03.Supervised_learning/02.Classification.ipynb)

We present the simplest and most popular classification algorithm: _Logistic Regression_.

This is based on the _sigmoid function_, defined by

$$ f(z) := \frac{1}{1+e^{-z}}\, .$$

<p align="center">
    <img src="https://www6b3.wolframalpha.com/Calculate/MSP/MSP3997126a80776156d3d300003cdh3cg22c58ab4d?MSPStoreType=image/gif&s=1">
</p>

We use such a function as a regressor for the probability to belong to a specified class.

### [Decision Tree 🌳]((https://github.com/oscar-defelice/DSAcademy-lectures/blob/master/Lectures_src/03.Supervised_learning/03.DecisionTrees.ipynb))

A _decision tree_ is a flowchart-like structure in which each internal node represents a "test" on an attribute (e.g. whether a coin flip comes up heads or tails), each branch represents the outcome of the test, and each leaf node represents a class label (decision taken after computing all attributes). The paths from root to leaf represent classification rules.

<p align="center">
    <img src="https://imgs.xkcd.com/comics/flow_charts.png">
</p>

## [Error metrics](https://github.com/oscar-defelice/DSAcademy-lectures/blob/master/Lectures_src/03.Supervised_learning/04.ErrorMetrics.ipynb)

We need to define a metric to measure how good is our model response. We examine the most suitable metrics for different tasks and introduce the concepts of _satisfying_ and _optimising_ metrics.

## Aside note

To mix you up, we suggest to read this evergreen medium post titled "[_There is no classification_](https://towardsdatascience.com/there-is-no-classification-heres-why-bdc8539bc898)" by the Head of Decision intelligence department at Google.
Really inspiring and interesting in any case.
