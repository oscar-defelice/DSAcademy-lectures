# [Tourism Classification Challenge](https://zindi.africa/competitions/ai4d-lab-tanzania-tourism-classification-challenge) - Proposed Solution

The aim of this brief post is to illustrate the scheme of the proposed solution, whose complete developed code can be found in the [related notebook](./TanzaniaTourismClassification.ipynb).

Here are the steps we took.

## Preprocessing

* One Hot Encoder on categorical variabile
* Extract statistics from features
* Grouping averaging on different categorical features

## Models

* Implement lgbm part of staking with 10 folds
* Implement catboost part of staking with 10 folds

## Ensemble Models

* _Weight average_ $$\mathcal{W} = \texttt{lgbm-pred} \times 0.42 + \texttt{catboost-pred} \times 0.58$$ between the predictions of the previous models
* _Lgbm meta model_ $$\mathcal{L}_{\mathrm{meta}} = \texttt{lgbm-pred} + \texttt{catboost-pred}$$ between the predictions of the previous models
* _Catboost meta model_ $$\mathcal{C}_{\mathrm{meta}} = \texttt{lgbm-pred} + \texttt{catboost-pred} $$ between the predictions of the previous models

## Submission

* Average $$\mathcal{A} = \dfrac{1}{3} \left( \mathcal{W} + \mathcal{L}_{\mathrm{meta}} + \mathcal{C}_{\mathrm{meta}} \right)$$ between the predictions of the previous models
* 1st best score with Log Loss=1.032027519681248
