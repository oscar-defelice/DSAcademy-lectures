# Final project

Here we propose a final project for the course.

## Goals and motivations

This is meant as an extended exercise collecting and summarising the content of the whole course.
The aim is to give each student the freedom to choose the best solution he is comfortable with and to justify the choice with some data-driven consideration.

---

## Project Definition: Expresso churn prediction

Expresso is an African telecommunications services company that provides telecommunication services in two African markets: Mauritania and Senegal. Expresso offers a wide range of products and services to meet the needs of customers.

This solution will help Expresso to better serve their customers by understanding which customers are at risk of leaving.

> The objective of this project is to **develop a machine learning model to predict the likelihood of each Expresso customer "churning"**. 

_Churning_ here is defined as becoming inactive and not making any transactions for $90$ days.


<p align="center">
  <img src="https://zindpublic.blob.core.windows.net/public/uploads/image_attachment/image/434/969398cc-ff57-4c11-95be-7f3a47652251.png" width="350" alt="Expresso Logo">
</p>

---

## Project scheme

Here we describe how the project should be developed, or better what are the expected inputs and outputs.
Each student should deliver a project that corresponds to the project scheme.
We are inspired by [Kaggle Competitions](https://www.kaggle.com/competitions), so we will use the same format.

### Inputs

Data are provided in the `DataProject` folder.
The idea is to use such data to solve a problem.

We will use the following data structures:

- **DataProject**: a directory containing one or more csv files.
  - `train.csv`: training data with labels.
  - `test.csv`: test data with no labels.
  - `sample_submission.csv`: sample submission.
  - `VariableDefinitions.csv`: a csv file containing a description of the data.

### Outputs

These are the expected outputs of the project.

- **Submission**: a csv file containing the results of the project, according to the sample submission format.
- **FinalProject_Notebook**: a notebook file containing analysis, relevant choices and results comments and explanations.
- **{NAME}_model.joblib**: a file containing the trained model in the form of a pipeline.

## Evaluation

The evaluation metric for this challenge is the Area Under the Curve, **AUC score** on a test set (not provided).

The values can be between $0$ and $1$, inclusive. Where $1$ indicates the customer churned and $0$ indicates the customer stayed with Expresso.



Your `submission` file should look like:

| user_id     | Churn probability |
| ----------- | ----------------- |
|     10716   |      0.98         |
|     ...     |       ...         |

---

### Hint to save the model

One can save the model pipeline (so all the relevant feature engineering and preprocessing steps can be executed automatically) in a file with the following example code:

```python
from sklearn.externals import joblib
pipe = Pipeline([
                ('scaler', StandardScaler()), 
                ('model', LogisticRegression())
                ])

pipe.fit(X_train, y_train)
pipe.predict(X_test) # Not compulsory to save the model.

joblib.dump(pipe, '{NAME}_model.joblib')
```
