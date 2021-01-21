Arguments for randomForest function
================


[HackerEarth: Practical Tutorial on Random Forest and Parameter Tuning
in
R](https://www.hackerearth.com/practice/machine-learning/machine-learning-algorithms/tutorial-random-forest-parameter-tuning-r/tutorial/)

Parameter Tuning Section:

  - `ntree` is the number of trees. Larger number = more computationally
    expensive
  - `mtry` how many variables to select at a node split. The default is
    p/3 for regression and sqrt(p) for classification. Smaller values
    make overfitting a concern
  - `nodesize` is how many observations there are in the terminal nodes.
    It’s directly related to “tree depth”. When nodesize is higher, tree
    depth is lower. With lower tree depth a tree might “fail to
    recognize useful signals from the data”

[Machine Learning Mastery: Tune Machine Learning Algorithms in R (random
forest case
study)](https://machinelearningmastery.com/tune-machine-learning-algorithms-in-r/)

  - caret package will tune `mtry` … `train()` function?
  - `tuneRF()` searches for optimal `mtry` based on your data

[Oxford Protein Informatics Group: A very basic introduction to Random
Forests using
R](https://www.blopig.com/blog/2017/04/a-very-basic-introduction-to-random-forests-using-r/)
makes a good point about having different numbers of data points for
different classes, it makes the classifier more likely to predict the
dominant class when given new values.

What they say about their picks in the paper:

"In this study, the RF was implemented using a random forest package provided in R software (https://www.r-project.org/). All parameters except for the number of trees were set as the default values provided by the package (i.e., the number of training samples for each tree was 66.7% of the entire training samples, the number of randomly sampled variables as candidates at each split was the square root of the number of input variables, and the minimum size of the terminal node was 1). The number of trees (i.e., ntree) was selected at the modeling process."
