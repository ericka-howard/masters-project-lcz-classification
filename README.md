# Local Climate Zone Classification Using Random Forests

**The goal of this project was to replicate aspects of *[Comparison between convolutional neural networks and random forest for local climate zone classification in mega urban areas using Landsat images](https://doi.org/10.1016/j.isprsjprs.2019.09.009). The report can be found [here.]()**

Local Climate Zone (LCZ) classification can be useful in identifying microclimates within cities that may be useful for targeting climate risk adaptation efforts, which can help alleviate the issues created by the Urban Heat Island Effect.

In this work the focus was on random forest without inclusion of convolutional neural networks. Rather than four cities, this investigation will focus on just Hong Kong. This city was chosen because each LCZ class has at least four polygons. The data used was accessed from the [2017 IEEE GRSS Data Fusion Contest](http://www.grss-ieee.org/2017-ieee-grss-data-fusion-contest/) anc includes both Landsat 8 imagery and LCZ reference data. The classification scheme used by the [World Urban Database and Access Portal Tools project](http://www.wudapt.org/) (S1 in the paper) will be recreated, with varying numbers of the tuning parameter ntree, which controls the number of trees in the random forest. Accuracy with out-of-bag data will be compared to that with the test dataset. 

Accuracy Metrics fall in line with the remote sensing field and include the following:

$$\text{Overall Accuracy}= OA= \frac{\text{number of correctly classified reference sites}}{\text{total number of reference sites}}$$
For overall comparisons. $OA_{\textit{urb}}$ and $OA_{\textit{nat}}$ will also be used, which are the same as OA but only include the urban or natural classes, respectively. For by class comparisons $F_1$ score will be used.
$$F_1\text{ Score} = 2*\frac{UA*PA}{UA+PA}$$
where,
$$UA(z)\ = \frac{\text{number of correctly identified pixels in class z}}{\text{total number of pixels identified as class z}}$$
$$PA(z) = \frac{\text{number of correctly identified pixels in class z}}{\text{number of pixels truly in class z}}$$

UA is a measure of user's accuracy, which is also called precision or positive predictive value. PA is the measure of producer's accuracy, also known as recall or sensitivity. The $F_1$ score is the harmonic mean of UA and PA. An $F_1$ score closer to 1 indicates a model that has both low false positives and low false negatives.

The results from varying the tuning parameter indicate that there is an upper limit to how much the number of trees can affect the accuracy of the prediction, and it lies around 125 trees for OA metrics, and around 100 trees for $F_1$ scores.

![]("results/plots/ntree_5_to_500_line_plot.pdf")

![]("results/plots/ntree_5_to_500_facet_plot.pdf")

Results also indicate a lack of transferability between accuracy of predictions for the out-of-bag data as compared to that of the test dataset. This makes sense considering the spatial autocorrelation present in data such as these, but is concerning nonetheless. Additionally, OA metrics seem to mask low $F_1$ scores in individual classes.

![]("results/plots/test_set_validation_metrics_barplot_separated.pdf")

Finally, here is an example of a full prediction from the best random forest:

![]("results/map_images/lcz_prediction.pdf")

![]("results/map_images/class_legend_horizontal.pdf")

If you have any comments or questions feel free to contact me @erickabsmith