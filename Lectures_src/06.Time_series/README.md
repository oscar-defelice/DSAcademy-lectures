# Time Series Analysis

These lectures are centred on a particular kind of data: time series.

<p align="center">
    <img width="303" alt="image" src="https://user-images.githubusercontent.com/49638680/160926155-1d971e92-b067-4a21-8e3b-d220478affcb.png">
</p>

## Time series definition

Formally we define a time series as a _realisation_ of a random process.

Roughly speaking, a _random process_ is a family of stochastic variables over some probability space $\left(\Omega, \mathcal{F}, p\right)$.

$$ \mathcal{X} := \left\{x_i(\omega) \ \vert \ i\in \mathcal{T} \right\}\, .$$

Hence, a time series can be represented as a sequence of values 

$$y(t_i) = y_i \qquad \text{at times} \qquad t_i \, ,$$ 

and we might also have at each time step some auxiliary features 

$$X(t_i) = X_i \, ,$$

which we think are related with the values of $y_i$. 

## Practical time series analysis

We are going to illustrate some pandas methods to treat time indexed data and to extract useful information out of them.

## Time series decomposition

A very important skill is to separate the time phenomena into their basic components to split the analysis and to weight contributions.

