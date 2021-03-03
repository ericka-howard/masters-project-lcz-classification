# Local Climate Zone Classification Using Random Forests

**The goal of this project was to replicate aspects of *[Comparison between convolutional neural networks and random forest for local climate zone classification in mega urban areas using Landsat images](https://doi.org/10.1016/j.isprsjprs.2019.09.009).* The report can be found [here.](https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/doc/report/report.pdf)***

Local Climate Zone (LCZ) classification can be useful in identifying microclimates within cities that may be useful for targeting climate risk adaptation efforts, which can help alleviate the issues created by the Urban Heat Island Effect.

In this work the focus was on random forest without inclusion of convolutional neural networks. Rather than four cities, this investigation will focus on just Hong Kong. This city was chosen because each LCZ class has at least four polygons. The data used was accessed from the [2017 IEEE GRSS Data Fusion Contest](http://www.grss-ieee.org/2017-ieee-grss-data-fusion-contest/) anc includes both Landsat 8 imagery and LCZ reference data. The classification scheme used by the [World Urban Database and Access Portal Tools project](http://www.wudapt.org/) (S1 in the paper) will be recreated, with varying numbers of the tuning parameter ntree, which controls the number of trees in the random forest. Accuracy with out-of-bag data will be compared to that with the test dataset.

**Here's the inital LCZ data and one Landsat scene, both with a Google Maps satellite baselayer:**

<img src="./results/map_images/png_starting_polygons.png" alt="LCZ Reference Data" width="400" height="400"><img src="./results/map_images/png_bands.png" alt="Landsat Scene" width="400" height="400">

## Accuracy Metrics 

Accuracy metrics fall in line with the remote sensing field and include the following:

<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/doc/equation_images/OA.png" alt="OA equation" width="350" height="50">

For overall comparisons. OA_urb and OA_nat will also be used, which are the same as OA but only include the urban or natural classes, respectively. For by class comparisons F1 score will be used.

<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/doc/equation_images/F1.png" alt="F1 equation" width="200" height="75">

where,

<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/doc/equation_images/PA.png" alt="PA equation" width="300" height="40">
<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/doc/equation_images/UA.png" alt="UA equation" width="300" height="40">

UA is a measure of user's accuracy, which is also called precision or positive predictive value. PA is the measure of producer's accuracy, also known as recall or sensitivity. The F1 score is the harmonic mean of UA and PA. An F1 score closer to 1 indicates a model that has both low false positives and low false negatives.

## Results

The results from varying the tuning parameter indicate that there is an upper limit to how much the number of trees can affect the accuracy of the prediction, and it lies around 125 trees for OA metrics, and around 100 trees for F1 scores.

<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/results/plots/png_ntree_5_to_500_line_plot.png" alt="OA Metrics when varying ntree from 5 to 500 in intervals of 5. Based on out-of-bag dataset." width="500" height="400">

<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/results/plots/png_ntree_5_to_500_facet_plot.png" alt="F1 Scores when varying ntree from 5 to 500 in intervals of 5. Based on out-of-bag dataset" width="600" height="550">

Results also indicate a lack of transferability between accuracy of predictions for the out-of-bag data as compared to that of the test dataset. This makes sense considering the spatial autocorrelation present in data such as these, but is concerning nonetheless. Additionally, OA metrics seem to mask low F1 scores in individual classes.

<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/results/plots/png_test_set_validation_metrics_barplot_separated.png" alt="Validation metrics based on test dataset." width="500" height="350">

## A Full Prediction

Finally, here is an example of a full prediction from the best random forest:

<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/results/map_images/png_lcz_with_satellite.png" alt="Fully Predicted LCZ Map" width="500" height="500">

<img src="https://github.com/erickabsmith/masters-project-lcz-classification/blob/main/results/map_images/png_class_legend_horizontal.png" alt="Legend" width="700" height="100">

If you have any comments or questions feel free to contact me at [smith.ericka.b@gmail.com](mailto:smith.ericka.b@gmail.com)
