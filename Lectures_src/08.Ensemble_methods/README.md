# Ensemble methods

<p align="center">
    <img width="650" src="https://miro.medium.com/max/1075/1*10t9S7xvWE5Z3NEZrmHG2w.jpeg">
</p>

The main idea behind _ensemble methods_ is simple: many models are more robust than only one.
Indeed, such a technique combines several base models in order to produce one optimal predictive model.

## Bagging and boosting

These are the two main techniques of combining models.

### Bagging

Bagging (_Bootstrapping and aggregating_) is a technique statistically based on _central limit theorem_.

Bootstrap sampling is a statistical technique involving drawing of sample data repeatedly with replacement from a data source to estimate a population parameter.

<p align="center">
    <img width="1200" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2020/02/img_2-1.png">
</p>

Bootstrap sampling is used in a machine learning ensemble algorithm called bootstrap aggregating (also called bagging). 
It helps in avoiding overfitting and improves the stability of machine learning algorithms.

In bagging, a certain number of equally sized subsets of a dataset are extracted with replacement. 
Then, a machine learning algorithm is applied to each of these subsets and the outputs are ensembled as illustrated below.

<p align="center">
    <img width="1200" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2020/02/Bagging.png">
</p>

This method is part of the wider class of _average methods_ for ensemble learning, where the resulting model is better than all its components mainly because its variance is reduced.

### Boosting

The idea behind boosting is quite simple: we will train a "chain" of models, such that the next model will focus on mis-predicted examples of the previous one.

In other words, _boosting_ is an ensemble method that seeks to change the training data to focus attention on examples that previous fit models on the training dataset have gotten wrong.

<p align="center">
    <img width="1200" src="https://media.geeksforgeeks.org/wp-content/uploads/20210707140911/Boosting.png">
</p>

Such a method is part of the wider class of _boosting methods_ for ensemble learning, where base estimators are built sequentially and one tries to reduce the bias of the combined estimator.
The motivation is to combine several weak models to produce a powerful ensemble.

## References

1. A nice introduction to ensemble algorithms can be found [here](https://www.analyticsvidhya.com/blog/2018/06/comprehensive-guide-for-ensemble-models/).
2. A more complete treatment of the subject can be found in chapter $8$ of [_Introduction to Statistical Learning_](https://www.statlearning.com/).
3. A much more deep discussion about the topic is given by the book [_Ensemble Methods: Foundations and Algorithms_](https://tjzhifei.github.io/links/EMFA.pdf).
