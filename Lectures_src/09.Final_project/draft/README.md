# Final project

Here we propose a final project for the course.

## Goals and motivations

This is meant as an extended exercise collecting and summarising the content of the whole course.
The aim is to give each student the freedom to choose the best solution he is comfortable with and to justify the choice with some data-driven consideration.

---

## Project Definition: Tanzania tourists expense prediction

The Tanzanian tourism sector plays a significant role in the Tanzanian economy, contributing about $17\%$ to the country’s GDP and $25\%$ of all foreign exchange revenues. The sector, which provides direct employment for more than $600000$ people and up to $2$ million people indirectly, generated approximately $2.4$ billion of dollars in $2018$ according to government statistics. Tanzania received a record $1.1$ million international visitor arrivals in $2014$, mostly from Europe, the US and Africa.

Tanzania is the only country in the world which has allocated more than $25\%$ of its total area for wildlife, national parks, and protected areas.There are 16 national parks in Tanzania, 28 game reserves, 44 game-controlled areas, two marine parks and one conservation area.

<p align="center">
  <img src="https://www.planetware.com/photos-large/TZA/tanzania-mount-kilimanjaro.jpg" width="700" alt="Tanzania tourism sector">
</p>

Tanzania’s tourist attractions include the _Serengeti_ plains, which hosts the largest terrestrial mammal migration in the world; the _Ngorongoro_ Crater, the world’s largest intact volcanic caldera and home to the highest density of big game in Africa; _Kilimanjaro_, Africa’s highest mountain; and the Mafia Island marine park; among many others. The scenery, topography, rich culture and very friendly people provide for excellent cultural tourism, beach holidays, honeymooning, game hunting, historical and archaeological ventures – and certainly the best wildlife photography safaris in the world.

> The objective of this project is to **develop a machine learning model that can classify the range of expenditures a tourist spends in Tanzania**. The model can be used by different tour operators and the Tanzania Tourism Board to automatically help tourists across the world estimate their expenditure before visiting Tanzania.

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

The evaluation metric for this challenge is the **average F1-score** on a test set (not provided).

Your `submission` file should look like:

| Test_ID     | PredictedClass |
| ----------- | -------------- |
| tour_10716  |   High Cost    |
|     ...     |       ...      |

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
