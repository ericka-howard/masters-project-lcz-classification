# Milestones

### Prior to Winter Quarter (Dec. 9 - Jan. 1)

* [x] Find resources on random forests
* [x] Dive into data


### Week 1 (Jan. 4-8)

* [x] Set up weekly meetings
* [x] Create weekly work schedule (i.e. timing of work sessions)
* [x] Address expected data preprocessing challenges
    * [x] Pick a city to start with. *Hong Kong*
    * [x] <del>Get Landsat images from USGS Earth Explorer for  that city on it's two dates</del>*Using contest data*
    * [x] <del>Clip image to cover city </del>*Using contest data*
    * [x] <del>Figure out what ENVI FLAASH is </del>*Using contest data*
    * [x] <del>Read about bilinear reampling with spatial data </del>*Only for curiosity sake, using contest data*
* [ ] Solidify plan of attack for data preprocessing. *In progress*

### Week 2 (Jan. 11-15)

* [ ] Schedule Oral Exam 
* [ ] Start writing background info/introduction
* [ ] Go through 2+ random forest resources
     * [x] [**Classification Vignette - Chris Holden**](http://ceholden.github.io/open-geo-tutorial/R/chapter_5_classification.html)
* [ ] Data preprocessing steps
     * [x] Determine how you get raster data into R.
     * [x] How can you get the raster data to be a data frame (& does it even make sense to do that?). *It's seriously just* `as.data.frame(dat, xy=TRUE)`
     * [x] Determine how you choose to only use certain bands as input data? Can you just filter it? *Yes*
     * [ ] How do I know that the columns of my dataframe are actually what I'm looking for? Where are the bands? *See next primary goal below (from meeting notes issue) for strategy*
     * [ ] Strategize how to randomly and evenly divide the polygons. Test if time allows
* [ ] Attempt to get from Tiffs to a data frame appropriate for feeding into random forest function.  To get started:
     * [ ] Identify a pixel in an LCZ polygon 
     * [ ] Get the value from a LandSat image band, for that pixel
      
### Week 3 (Jan. 18-22)

* [ ] Finish data preprocessing
* [ ] Start references

### Week 4 (Jan 25-29)

* [ ] Fit Different Classification Schemes

### Week 5 (Feb. 1-5)

* [ ] Do modelling and accuracy assessment

### Week 6 (Feb. 8-12)

* [ ] Write Methods Section
* [ ] Start preparing results figures

### Week 7 (Feb. 15-19)

* [ ] Write Results
* [ ] Write conclusion
* [ ] Final Evaluation of where things are at and setting what "finished" means **by Thursday Meeting (18)**

### Week 8 (Feb. 22-26)

* [ ] Finish writing **by Thursday Meeting (25th)**
* [ ] Finish polishing figures

### Week 9 (Mar. 1-5)

* [ ] Prepare Presentation
* [ ] Submit paper **March 2**

### Week 10 (Mar. 8-12)

* [ ] Oral Exam

### Finals Week (Mar. 15-19)

* [ ] All degree requirements submitted
