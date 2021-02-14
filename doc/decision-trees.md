Decision Trees
================

[Statquest: Decision Trees](https://www.youtube.com/watch?v=7VeUPuFGJHk)

-   Asks a question, classifies based on answer
-   Top of tree is called root node or the root
-   Internal nodes, or just nodes, are intermediates that have arrows
    pointing to them and away from them
-   Leaf nodes, or leaves, have arrows pointing to them but no arros
    pointing away from them

How do you determine which question to ask first? \* Look at how well
each question splits the variable you’re interested in predicting \*
When no nodes classify with 100% accuracy, they are considered
**impure** \* How is impurity measured?

1.  For each node:

$$
Gini\\ Impurity = 1 - P(yes)^2 - P(no)^2 = 1-{(\\frac{number\\ yes}{total\\ number\\ in\\ node})}^2-{(\\frac{number\\ no}{total\\ number\\ in\\ node})}^2
$$

1.  Total impurity of using said variable is the weighted average of the
    leaf node impurities

$$
Total\\ Gini\\ Impurity\\ of\\ Node\\ =\\ (Gini\\ Impurity\\ leaf\\ 1 \* \\frac{number\\ in\\ leaf\\ 1}{total\\ number\\ in\\ both\\ leaf\\ nodes})\\ +\\ (Gini\\ Impurity\\ leaf\\ 2 \* \\frac{number\\ in\\ leaf\\ 2}{total\\ number\\ in\\ both\\ leaf\\ nodes})
$$

**You want the lowest Gini Impurity**

Once that node has been determined, you try the next node in the exact
same way. Once all new node options no longer decrease Gini Impurity,
you have your leaf (final) node.

Note that if you have multiple options (&gt;2) for each split, you first
calculate the Gini Impurity for each potential combination (except that
one that contains all options)

[Statquest: Decision Trees, Part 2- Feature Selection and Missing
Data](https://www.youtube.com/watch?v=wpNl-JwwplA)

Feature Selection

-   Automatic feature selection happens when one variable gets “cut”
    (doesn’t make it into the tree) just based on never providing a
    greater reduction in Gini Impurity as compared to the other options,
    including the option to stop splitting and be a leaf node.
-   Overfitting is a problem. One way to avoid it is to have a threshold
    for impurity reduction. If Gini impurity is not reduced by enough,
    that split will not be made. This results in more simple trees.
-   Decision trees are often overfit.

Missing Data

-   One option is to pick the most common answer (or for numbers, mean
    or median)
-   Another option is to find the variable most closely correlated to
    the variable in which there is the missing data point, and use that
    relationship to predict the answer. (or in the case of numbers,
    linear regression between these two correlated variables)
