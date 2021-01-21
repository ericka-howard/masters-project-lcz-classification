Leo Breiman (2001)
================

`{r setup, include=FALSE} knitr::opts_chunk$set(echo = TRUE)`

Growing an ensemble of trees and letting them vote for the most popular
class:

  - Bagging (Breiman \[1996\]): To grow each tree a random selection
    (without replacement) is made from the examples in the training set.
  - Random Split Selection (Dietterich \[1998\]): At each node the split
    is selected at random from among K best splits.
  - Generate new training sets by randomizing the outputs in the
    original training set. (Breiman \[1999\])
  - Select the training set from a random set of weights on the examples
    in the training set
  - “The Random Subspace” method (Ho \[1998\]): random selection of a
    subset of features to use to grow each tree.  
  - Adaboost (Freund and Schapire \[1996\]): No reandom elements, grows
    an ensemble of trees by successive reweightings of the training set
    where the currents weights depend on the past history of the
    ensemble formation (?)

This paper specifically really builds upon Written Character Recognition
(Amit and Gemen \[1997\])

“The common element in all of these procedures is that for the kth tree,
a random vector \(\Theta_k\) is generated, independed of the past random
vectors \(\Theta_1,...,\Theta_{k-1}\), but with the same distribution;
and a tree is grown using the training set and \(\Theta_k\), resulting
in a classifier \(h(\bf{x}, \Theta_k)\) where \(\bf{x}\) is an input
vector.”

SLLN gives that random forests always converge, overfitting not an
issue.

Accuracy depends on the “strength” (? “how accurate the individual
classifiers are” ?) of the individual tree classifiers and a measure of
the dependence between them.

Argues Adaboost is a random forest.

Bagging and random split selection are more robust to noises than
Adaboost
