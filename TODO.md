# Milestones

### Prior to Winter Quarter (Dec. 9 - Jan. 1)

* [x] Find resources on random forests
* [x] Dive into data


### Week 1 (Jan. 4-8)

* [x] Set up weekly meetings
* [x] Create weekly work schedule (i.e. timing of work sessions)
* [x] Address expected data preprocessing challenges
    * [x] *Hong Kong.* Pick a city to start with. 
    * [x] *Using contest data * <del>Get Landsat images from USGS Earth Explorer for  that city on it's two dates</del>
    * [x] *Using contest data.* <del>Clip image to cover city </del>
    * [x] <del>Figure out what ENVI FLAASH is </del>*Using contest data*
    * [x]  </del>*Only for curiosity sake, using contest data.* <del>Read about bilinear reampling with spatial data
* [x] Solidify plan of attack for data preprocessing. 

### Week 2 (Jan. 11-15)

* [x] Schedule Oral Exam 
* [x] *Migrated to week 3.* <del>Start writing background info/introduction</del>
* [x] Go through 2+ random forest resources
     * [x] [**Classification Vignette - Chris Holden**](http://ceholden.github.io/open-geo-tutorial/R/chapter_5_classification.html)
* [x] Data preprocessing steps
     * [x] Determine how you get raster data into R.
     * [x] How can you get the raster data to be a data frame (& does it even make sense to do that?). *It's seriously just* `as.data.frame(dat, xy=TRUE)`
     * [x] Determine how you choose to only use certain bands as input data? Can you just filter it? *Yes*
     * [x] How do I know that the columns of my dataframe are actually what I'm looking for? Where are the bands? *See next primary goal below (from meeting notes issue) for strategy*
     * [x] *Migrated to week 4.* <del>How did they randomly and evenly divide the polygons? Test if time allows</del>
* [x] Attempt to get from Tiffs to a data frame appropriate for feeding into random forest function. 
      
### Week 3 (Jan. 18-22)

* [x] Start references
* [x] Finish data preprocessing
    * [x] Combine bands and get rid of ones not used in paper
    * [x] *Migrated to week 4.* <del>Figure out how to/how they randomly and evenly divide the polygons.</del>
* [x] Go through 2+ random forest resources
* [x] What are the things/arguments that I control when I run that randomForest function? 
* [x] Start writing background info/introduction

### Week 4 (Jan 25-29)

* [x] Fit Different Classification Schemes
* [x] How did they randomly and evenly divide the polygons? Test.
* [x] Go through 2+ random forest resources
* [x] Start writing methods

### Week 5 (Feb. 1-5)

* [x] Randomly and Evenly Divide the Polygons.
* [x] Fit Different Classification Schemes
* [x] At least set up accuracy metrics (add calculation formats into R somewhere)
* [x] Organize repo, especially docs section
* [x] Cite some of claims in introduction

### Week 6 (Feb. 8-12)

* [x] Finish Methods Section
    * [x] Description of data (actual volume of data involved + how this data relates to the model)
    * [x] Explanation of how a typical decision tree is built
    * [x] Explain Gini Impurity & Information Gain. What "best" means
* [x] Start preparing results figures
    * [x] Table/Plot that shows the OA over the tuning parameters tried
    * [x] Variable importance plot
    * [x] One complete map of predictions
* [x] Which models look the best? Why?
* [x] Create F1 metric function

### Week 7 (Feb. 15-19)

* [x] Write Results
* [x] Write conclusion
* [x] Final Evaluation of where things are at and setting what "finished" means **by Thursday Meeting (18)**

### Week 8 (Feb. 22-26)

* [x] Finish writing **by Thursday Meeting (25th)**
* [x] Finish polishing figures

### Week 9 (Mar. 1-5)

* [x] Prepare Presentation
* [x] Submit paper **March 2**

### Week 10 (Mar. 8-12)

* [x] Oral Exam

### Finals Week (Mar. 15-19)

* [ ] All degree requirements submitted
