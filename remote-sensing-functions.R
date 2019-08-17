# The following function finds the normalized difference between two bands over the sum of the two bands.
# Input: band 1, band 2, where band 1 will be subtracted from band 2 (band2 - band1). The input will be a raster.
# Output: A raster file of the normalized difference
norm_diff <- function(b1, b2) {
    (b2 - b1)/(b1 + b2)
}

# The following function checks to see if a folder exists in the directory. If it does, it will print "the directory already exists". If the folder does not exist, the function will create a directory and print "the directory has been created".
# Input: directory path that you want to check/create
# Output: the creation of the directory and/or a statement of the action taken by the function
check_create_dir <- function(dir_path) {
    if(dir.exists(dir_path)) { # if directory DOES exist...
        print("the directory already exists") # ... print this statement
    }
    if(!dir.exists(dir_path)) { # if directory does NOT exist (!)...
        dir.create(dir_path) # ... create the directory and...
        print("the directory has been created") # ...print this statement
    }
}