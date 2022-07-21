# Scripts_classif_reg_Graphs

I used some of these scripts in my academic papers:

Automatic tree count in the Amazon: https://cdnsciencepub.com/doi/10.1139/juvs-2019-0024

Automatic measurement of canopy cover, canopy height, grass cover, and satistical analysis: https://www.mdpi.com/2072-4292/13/12/2401

Regression analysis to estimate species diversity: https://www.mdpi.com/2072-4292/14/4/830

Some scripts of this repository are not published in these papers and anywhere either, but they are some specific operations that can be consulted for image processing and statistical analysis.

Confusion_matrix creates a confusion matrix of a classification process applied to a geospatial image.

Correlation_Matrix creates a correlation matrix.

Graphs can be used to create different graphics: histogram, boxplot, divergence (vertical histogram comparing different results of the same parameter), and slope (when similar variables are compared to two different outputs).

LM_TreeCount.r performs an automatic tree count process on a raster image using the Local Maximum (LM) algorithm.

Linear_Discriminant_Analysis_LDA performs a Linear Discriminant Analysis (LDA) classification.

Linear_Regression performs simple or multiple Linear Regression.

Random_Forest_Reg_Classif performs regression and classification considering the Random Forest algorithm.

Random_different_tasks is a backup for different geospatial operations that I have used in my projects. Each of the functions in the script can be used isolatedly: count the number of pixels of a certain value, adds lines and columns to a raster imported in R, organize a matrix in ascending order according to a specific column, changes specific pixel value to NA, adjust raster data to square pixels (images generated by photogrammetry may generate slightly different x and y pixel values that may need to become equal for some algorithms), change the coordinate reference system, degrade the spatial resolution of the image (for instance, degrade a 5 cm image pixel to a 30 cm pixel), and apply a standard deviation filter.

Random_different_tasks_2 presents some other geospatial operations that can be performed isolatedly. It shows statistics for specific groups of data, adds or deletes columns or lines in the matrices, converts raster formats to *.txt format, and extracts individual bands of an image.

Create RollingBall_TopHat_Filters applies Rolling Ball and TopHat filters.

Stepwise performs the stepwise statistic procedure.

TreeCrown_Delineation_Watertshed performs segmentation using the watershed algorithm. It requires an automatic object identification representing each object by geographic coordinates to start the watershed algorithm.
