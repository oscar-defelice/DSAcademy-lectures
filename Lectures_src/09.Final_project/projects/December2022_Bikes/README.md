# Final project

Here we propose a final project for the course.

## Goals and motivations

This is meant as an extended exercise collecting and summarising the content of the whole course.
The aim is to give each student the freedom to choose the best solution he is comfortable with and to justify the choice with some data-driven consideration.

---

## Project Definition: Bike rent prediction

<p align="center">
  <img src="https://storage.googleapis.com/kaggle-datasets-images/34295/55637/3ed905f1776dbdf1eeadb0c0007b948c/dataset-cover.jpg?t=2018-07-12-23-51-34" height="250", alt="Bike chain">
</p>

The aim of this project is to help a bike sharing service to predict the hourly number of rented bikes for the following week. The dataset is made by train and test files, where one can find for each hour the amount of bikes rented by customers of a bike sharing service in Washington DC, together with other features such as whether a certain day was a national holiday, and which day of the week was it.

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

The evaluation metric for this challenge is the Mean Absolute Percentage Error, **MAPE** on a test set (not provided).

The values can be between $0$ and $+\infty$.

Your `submission` file should look like:

|       date       |      hour         |      count        |
| ---------------- | ----------------- | ----------------- |
|     2012-12-01   |        00         |       15          |
|        ...       |       ...         |      ...          |

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
