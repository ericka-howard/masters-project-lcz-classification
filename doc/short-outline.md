Short Outline
================


## Satellite Data

1.  Went to USGS and downloaded 8 images
2.  Clipped to city
3.  Ran through FLAASH
4.  (?) Split out into bands

## Reference Data

1.  From competition
    1.  Download
    2.  Randomly divide into training and testing group by category
2.  From GMIS
    1.  Download (GEOTIFFS)’
    2.  ??

## Methods

3 Random forests - primarily with default settings 2 Convolutional
Neural Networks - had to figure out “optimal structure”

### Classification Scheme

#### Random Forests: S1, S2, S3

-   S1 is basically the control (WUDAPT method)
-   S2 adds more spectral info
-   S3 uses the context of surrounding squares

#### CNNs: S4, S5

-   S4 seems like more of a straighforward “throw the data in the model”
-   S5 uses context of surrounding squares

### Modelling and Accuracy Assessment

-   Formula for OA is found
    [here](https://ieeexplore.ieee.org/abstract/document/8338367)
-   Ran model ten times for robustness check
-   Assessed accuracy with 4 metrics: OA, OA<sub>urb</sub>,
    OA<sub>nat</sub>, F1-score
-   Selected one model to map LCZ for each city based on OA and
    OA<sub>urb</sub>
-   Mcnemar’s Test for significance of differences

### Transferability Experiments

Tried LCZ models on the fourth city from other three bests.
