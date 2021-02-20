# Local Climate Zone Classification in Mega Urban Areas Using Landsat Images and Random Forests

**The goal of this project is to replicate aspects of *[Comparison between convolutional neural networks and random forest for local climate zone classification in mega urban areas using Landsat images](https://doi.org/10.1016/j.isprsjprs.2019.09.009)***

The focus will be on random forest without inclusion of convolutional neural networks. Rather than four cities, this investigation will focus on just Hong Kong. This city was chosen due to it's lack of "red-star classes" (LCZ classes with 3 or fewer polygons) in the study area. 

The data used will be Landsat 8 data from the [2017 IEEE GRSS Data Fusion Contest](http://www.grss-ieee.org/2017-ieee-grss-data-fusion-contest/).

The classification scheme used by the [World Urban Database and Access Portal Tools project](http://www.wudapt.org/) (S1 in the paper) will be recreated. If time allows, it will be compared to the classification scheme from [Danylo et. al (2016)](https://doi.org/10.1109/JSTARS.2016.2539977), S2 in the paper, which includes more spectral information as input variables. 

In order to assess accuracy a portion of the same methods as used in the paper will be employed. The specific measures will be 

  - OA
  - OA<sub>urb</sub> which is accuracy among urban LCZ types (LCZs 1-10)
  - OA<sub>nat</sub> which is accuracy among natural LCZ types (LCZs
    A-G)
  - F1-score, which is harmonic mean of UA (user’s accuracy) and PA
    (producer’s accuracy) of each LCZ class to examine classification
    accuracy by class. F1 also explains how similar the two values are.
    
(?) Mcnemar's test to evaluate the significance of differences in the classifications results by scheme will also be used. *I felt like this wasn't the best test to use?*
