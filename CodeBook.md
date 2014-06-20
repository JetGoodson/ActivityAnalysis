---Study Design---

The original study was conducted by Anguita et al at the "Smartlab" of the University of Genoa, Italy (www.smartlab.ws). 

A group of 30 subjects between the ages of 19 and 48 years were videotaped performing a set of activities while wearing a smartphone. The gyroscope and accelerometer of the smartphone recorded 50 measurements per seconds of the 3-axis linear acceleration and 3-axis angular velocity. Videotaping allowed the data to be manually labeled as WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.

The motion measurements were then processed with noise filters and a sliding window was applied. A low-pass filter was used to separate the acceleration from the subjects' motion and the acceleration due to gravity. Variables were calculated in each window in both the time and frequency domain. The data produced for each sliding window is further cleaned in this package.

After this processing, the data was split 70%/30% into training and test data. 

---Code Book---

The origial 561 features before the cleaning performed are described as part of the dataset available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For all linear measurements the units are g, the standard gravitional acceleration (9.8 m/s^2) except for linear jerk, which is a g/s. All angular velocity measurements are in radians/s, except for the angular jerk, which is radian/s^2.

After cleaning and skimming the dataset features are reduced to the following 68 features for each window of data:

Subject                                                    - an identifying number for each subject, 1 through 30.
ActivityLabel                                              - the activity being performed for each window of time divided into the factors 
                                                             WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING
                                                             as determined by an observer.
BodyAccelerometer_mean_X                                   - the mean of the acceleration of the subject's smartphone along the X-axis for each time window.   
BodyAccelerometer_mean_Y                                   - the mean of the acceleration of the subject's smartphone along the Y-axis for each time window.
BodyAccelerometer_mean_Z                                   - the mean of the acceleration of the subject's smartphone along the Z-axis for each time window.
BodyAccelerometer_StandardDeviation_X                      - the standard deviation of the acceleration of the subject's smartphone along the X-axis for each time window. 
BodyAccelerometer_StandardDeviation_Y                      - the standard deviation of the acceleration of the subject's smartphone along the Y-axis for each time window.    
BodyAccelerometer_StandardDeviation_Z                      - the standard deviation of the acceleration of the subject's smartphone along the Z-axis for each time window.   
GravityAccelerometer_mean_X                                - the mean of the gravitational acceleration along the X-axis for each time window.
GravityAccelerometer_mean_Y                                - the mean of the gravitational acceleration along the Y-axis for each time window. 
GravityAccelerometer_mean_Z                                - the mean of the gravitational acceleration along the Z-axis for each time window.  
GravityAccelerometer_StandardDeviation_X                   - the standard deviation of the gravitational acceleration along the X-axis for each time window.     
GravityAccelerometer_StandardDeviation_Y                   - the standard deviation of the gravitational acceleration along the Y-axis for each time window.        
GravityAccelerometer_StandardDeviation_Z                   - the standard deviation of the gravitational acceleration along the Z-axis for each time window.       
BodyAccelerometerJerk_mean_X                               - the mean of the jerk (g/s) of the subject's smartphone along the X-axis for each time window. 
BodyAccelerometerJerk_mean_Y                               - the mean of the jerk (g/s) of the subject's smartphone along the Y-axis for each time window.
BodyAccelerometerJerk_mean_Z                               - the mean of the jerk (g/s) of the subject's smartphone along the Z-axis for each time window. 
BodyAccelerometerJerk_StandardDeviation_X                  - the standard deviation of the jerk (g/s) of the subject's smartphone along the X-axis for each time window.     
BodyAccelerometerJerk_StandardDeviation_Y                  - the standard deviation of the jerk (g/s) of the subject's smartphone along the Y-axis for each time window.       
BodyAccelerometerJerk_StandardDeviation_Z                  - the standard deviation of the jerk (g/s) of the subject's smartphone along the Z-axis for each time window.      
BodyGyroscope_mean_X                                       - the mean of the angular velocity of the subject's smartphone around the X-axis for each time window. 
BodyGyroscope_mean_Y                                       - the mean of the angular velocity of the subject's smartphone around the Y-axis for each time window.
BodyGyroscope_mean_Z                                       - the mean of the angular velocity of the subject's smartphone around the Z-axis for each time window. 
BodyGyroscope_StandardDeviation_X                          - the standard deviation of the angular velocity of the subject's smartphone around the X-axis for each time window.        
BodyGyroscope_StandardDeviation_Y                          - the standard deviation of the angular velocity of the subject's smartphone around the Y-axis for each time window.         
BodyGyroscope_StandardDeviation_Z                          - the standard deviation of the angular velocity of the subject's smartphone around the Z-axis for each time window.        
BodyGyroscopeJerk_mean_X                                   - the mean of the angular jerk (radians/s^2) of the subject's smartphone around the X-axis for each time window.
BodyGyroscopeJerk_mean_Y                                   - the mean of the angular jerk (radians/s^2) of the subject's smartphone around the Y-axis for each time window.       
BodyGyroscopeJerk_mean_Z                                   - the mean of the angular jerk (radians/s^2) of the subject's smartphone around the Z-axis for each time window.         
BodyGyroscopeJerk_StandardDeviation_X                      - the standard deviation of the angular jerk (radians/s^2) of the subject's smartphone around the X-axis for each time window.         
BodyGyroscopeJerk_StandardDeviation_Y                      - the standard deviation of the angular jerk (radians/s^2) of the subject's smartphone around the Y-axis for each time window.           
BodyGyroscopeJerk_StandardDeviation_Z                      - the standard deviation of the angular jerk (radians/s^2) of the subject's smartphone around the Z-axis for each time window.           
BodyAccelerometerMagnitude_mean                            - the mean of the magnitude of acceleration of the subject's smartphone for each time window.
BodyAccelerometerMagnitude_StandardDeviation               - the standard deviation of the magnitude of acceleration of the subject's smartphon for each time windowe.
GravityAccelerometerMagnitude_mean                         - the mean of the magnitude of the magnitude of gravitation acceleration for each time window.     
GravityAccelerometerMagnitude_StandardDeviation            - the standard deviation of the magnitude of gravitation acceleration for each time window.  
BodyAccelerometerJerkMagnitude_mean                        - the mean of the magnitude of the linear jerk of the subject's smartphone for each time window.     
BodyAccelerometerJerkMagnitude_StandardDeviation           - the standard deviation of the linear jerk (g/s) of the subject's smartphone for each time window.        
BodyGyroscopeMagnitude_mean                                - the mean of the magnitude of the angular velocity of the subject's smartphone for each time window.      
BodyGyroscopeMagnitude_StandardDeviation                   - the standard deviation of the angular velocity of the subject's smartphone for each time window.             
BodyGyroscopeJerkMagnitude_mean                            - the mean of the angular jerk (radians/s^2) of the subject's smartphone for each time window.      
BodyGyroscopeJerkMagnitude_StandardDeviation               - the standard deviation of the subject's smartphone for each time window.          
FFT_BodyAccelerometer_mean_X                               - the mean of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the X-axis for each time window.       
FFT_BodyAccelerometer_mean_Y                               - the mean of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the Y-axis for each time window.     
FFT_BodyAccelerometer_mean_Z                               - the mean of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the Z-axis for each time window.       
FFT_BodyAccelerometer_StandardDeviation_X                  - the standard deviation of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the X-axis for each time window.          
FFT_BodyAccelerometer_StandardDeviation_Y                  - the standard deviation of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the Y-axis for each time window.            
FFT_BodyAccelerometer_StandardDeviation_Z                  - the standard deviation of  the Fast-Fourier Transform of the acceleration of the subject's smartphone along the Z-axis for each time window.             
FFT_BodyAccelerometerJerk_mean_X                           - the mean of the Fast-Fourier Transform of the jerk (g/s) of the subject's smartphone along the  X-axis for each time window.           
FFT_BodyAccelerometerJerk_mean_Y                           - the mean of the Fast-Fourier Transform of  the jerk (g/s) of the subject's smartphone along the Y-axis for each time window.          
FFT_BodyAccelerometerJerk_mean_Z                           - the mean of the Fast-Fourier Transform of  the jerk (g/s) of the subject's smartphone along the Z-axis for each time window.            
FFT_BodyAccelerometerJerk_StandardDeviation_X              - the standard deviation of the Fast-Fourier Transform of the jerk (g/s) of the subject's smartphone along the X-axis for each time window.             
FFT_BodyAccelerometerJerk_StandardDeviation_Y              - the standard deviation of the Fast-Fourier Transform of the jerk (g/s) of the subject's smartphone along the Y-axis for each time window.             
FFT_BodyAccelerometerJerk_StandardDeviation_Z              - the standard deviation of the Fast-Fourier Transform of the jerk (g/s) of the subject's smartphone along the Z-axis for each time window.             
FFT_BodyGyroscope_mean_X                                   - the mean of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the X-axis for each time window.       
FFT_BodyGyroscope_mean_Y                                   - the mean of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the Y-axis for each time window.     
FFT_BodyGyroscope_mean_Z                                   - the mean of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the  Z-axis for each time window.     
FFT_BodyGyroscope_StandardDeviation_X                      - the standard deviation of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the X-axis for each time window.             
FFT_BodyGyroscope_StandardDeviation_Y                      - the standard deviation of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the Y-axis for each time window.               
FFT_BodyGyroscope_StandardDeviation_Z                      - the standard deviation of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the Z-axis for each time window.               
FFT_BodyAccelerometerMagnitude_mean                        - the mean of the Fast-Fourier Transform of the magnitude of acceleration of the subject's smartphone for each time window.  
FFT_BodyAccelerometerMagnitude_StandardDeviation           - the standard deviation of the Fast-Fourier Transform of the magnitude of acceleration of the subject's smartphone for each time window.       
FFT_BodyBodyAccelerometerJerkMagnitude_mean                - the mean of the Fast-Fourier Transform of the magnitude of the linear jerk (g/s) of the subject's smartphone for each time window.
FFT_BodyBodyAccelerometerJerkMagnitude_StandardDeviation   - the standard deviation of the Fast-Fourier Transform of the magnitude of the linear jerk (g/s) of the subject's smartphone for each time window.    
FFT_BodyBodyGyroscopeMagnitude_mean                        - the mean of the Fast-Fourier Transform of the magnitude of the angular velocity of the subject's smartphone for each time window.     
FFT_BodyBodyGyroscopeMagnitude_StandardDeviation           - the standard deviation of  the Fast-Fourier Transform of the magnitude of the angular velocity of the subject's smartphone for each time window.      
FFT_BodyBodyGyroscopeJerkMagnitude_mean                    - the mean of the Fast-Fourier Transform of the angular jerk (radians/s^2) of the subject's smartphone for each time window.     
FFT_BodyBodyGyroscopeJerkMagnitude_StandardDeviation       - the standard deviation of the Fast-Fourier Transform of the angular jerk (radians/s^2) of the subject's smartphone for each time window.             

This data can be found in "HumanActivitySmartphoneRecognition_cleanedData.txt" after running run_analysis.R

A summary of the data can be found in "HumanActivitySmartphoneRecognition_tidyData.txt". The motion features of the clean data are averaged (mean) over each Subject and activity label. The resulting features are:

Subject                                                         - an identifying number for each subject, 1 through 30
ActivityLabel                                                   - the activity being performed that was averaged over divided into the factors 
                                                                  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING
                                                                  as determined by an observer in each time window.
BodyAccelerometer_mean_X_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the acceleration of the subject's smartphone along the X-axis.   
BodyAccelerometer_mean_Y_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the acceleration of the subject's smartphone along the Y-axis.
BodyAccelerometer_mean_Z_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the acceleration of the subject's smartphone along the Z-axis.
BodyAccelerometer_StandardDeviation_X_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the acceleration of the subject's smartphone along the X-axis. 
BodyAccelerometer_StandardDeviation_Y_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the acceleration of the subject's smartphone along the Y-axis.    
BodyAccelerometer_StandardDeviation_Z_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the acceleration of the subject's smartphone along the Z-axis.   
GravityAccelerometer_mean_X_MEAN                                - the average (mean) over Subject and ActivityLabel of the time-window mean of the gravitational acceleration along the X-axis.
GravityAccelerometer_mean_Y_MEAN                                - the average (mean) over Subject and ActivityLabel of the time-window mean of the gravitational acceleration along the Y-axis. 
GravityAccelerometer_mean_Z_MEAN                                - the average (mean) over Subject and ActivityLabel of the time-window mean of the gravitational acceleration along the Z-axis.  
GravityAccelerometer_StandardDeviation_X_MEAN                   - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the gravitational acceleration along the X-axis.     
GravityAccelerometer_StandardDeviation_Y_MEAN                   - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the gravitational acceleration along the Y-axis.        
GravityAccelerometer_StandardDeviation_Z_MEAN                   - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the gravitational acceleration along the Z-axis.       
BodyAccelerometerJerk_mean_X_MEAN                              - the average (mean) over Subject and ActivityLabel of the time-window mean of the jerk (m/s^3) of the subject's smartphone along the X-axis. 
BodyAccelerometerJerk_mean_Y_MEAN                               - the average (mean) over Subject and ActivityLabel of the time-window mean of the jerk (m/s^3) of the subject's smartphone along the Y-axis.
BodyAccelerometerJerk_mean_Z_MEAN                              - the average (mean) over Subject and ActivityLabel of the time-window mean of the jerk (m/s^3) of the subject's smartphone along the Z-axis. 
BodyAccelerometerJerk_StandardDeviation_X_MEAN                  - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the jerk (m/s^3) of the subject's smartphone along the X-axis.     
BodyAccelerometerJerk_StandardDeviation_Y_MEAN                  - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the jerk (m/s^3) of the subject's smartphone along the Y-axis.       
BodyAccelerometerJerk_StandardDeviation_Z_MEAN                  - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the jerk (m/s^3) of the subject's smartphone along the Z-axis.      
BodyGyroscope_mean_X_MEAN                                       - the average (mean) over Subject and ActivityLabel of the time-window mean of the angular velocity of the subject's smartphone around the X-axis. 
BodyGyroscope_mean_Y_MEAN                                       - the average (mean) over Subject and ActivityLabel of the time-window mean of the angular velocity of the subject's smartphone around the Y-axis.
BodyGyroscope_mean_Z_MEAN                                       - the average (mean) over Subject and ActivityLabel of the time-window mean of the angular velocity of the subject's smartphone around the Z-axis. 
BodyGyroscope_StandardDeviation_X_MEAN                          - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the angular velocity of the subject's smartphone around the X-axis.        
BodyGyroscope_StandardDeviation_Y_MEAN                          - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the angular velocity of the subject's smartphone around the Y-axis.         
BodyGyroscope_StandardDeviation_Z_MEAN                          - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the angular velocity of the subject's smartphone around the Z-axis.        
BodyGyroscopeJerk_mean_X_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the angular jerk of the subject's smartphone around the X-axis.
BodyGyroscopeJerk_mean_Y_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the angular jerk of the subject's smartphone around the Y-axis.       
BodyGyroscopeJerk_mean_Z_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the angular jerk of the subject's smartphone around the Z-axis.         
BodyGyroscopeJerk_StandardDeviation_X_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the angular jerk of the subject's smartphone around the X-axis.         
BodyGyroscopeJerk_StandardDeviation_Y_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the angular jerk of the subject's smartphone around the Y-axis.           
BodyGyroscopeJerk_StandardDeviation_Z_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the angular jerk of the subject's smartphone around the Z-axis.           
BodyAccelerometerMagnitude_mean_MEAN                            - the average (mean) over Subject and ActivityLabel of the time-window mean of the magnitude of acceleration of the subject's smartphone.
BodyAccelerometerMagnitude_StandardDeviation_MEAN               - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the magnitude of acceleration of the subject's smartphone.
GravityAccelerometerMagnitude_mean_MEAN                         - the average (mean) over Subject and ActivityLabel of the time-window mean of the magnitude of the magnitude of gravitation acceleration.     
GravityAccelerometerMagnitude_StandardDeviation_MEAN            - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the magnitude of gravitation acceleration.  
BodyAccelerometerJerkMagnitude_mean_MEAN                        - the average (mean) over Subject and ActivityLabel of the time-window mean of the magnitude of the linear jerk of the subject's smartphone.     
BodyAccelerometerJerkMagnitude_StandardDeviation_MEAN           - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the linear jerk of the subject's smartphone.        
BodyGyroscopeMagnitude_mea_MEANn                                - the average (mean) over Subject and ActivityLabel of the time-window mean of the magnitude of the angular velocity of the subject's smartphone.      
BodyGyroscopeMagnitude_StandardDeviation_MEAN                   - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the angular velocity of the subject's smartphone.             
BodyGyroscopeJerkMagnitude_mean_MEAN                            - the average (mean) over Subject and ActivityLabel of the time-window mean of the angular jerk of the subject's smartphone.      
BodyGyroscopeJerkMagnitude_StandardDeviation_MEAN               - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the subject's smartphone.          
FFT_BodyAccelerometer_mean_X_MEAN                               - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the X-axis.       
FFT_BodyAccelerometer_mean_Y_MEAN                               - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the Y-axis.     
FFT_BodyAccelerometer_mean_Z_MEAN                               - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the Z-axis.       
FFT_BodyAccelerometer_StandardDeviation_X_MEAN                  - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the X-axis.          
FFT_BodyAccelerometer_StandardDeviation_Y_MEAN                  - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the Y-axis.            
FFT_BodyAccelerometer_StandardDeviation_Z_MEAN                  - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the acceleration of the subject's smartphone along the Z-axis.             
FFT_BodyAccelerometerJerk_mean_X_MEAN                           - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the jerk (m/s^3) of the subject's smartphone along the  X-axis.           
FFT_BodyAccelerometerJerk_mean_Y_MEAN                           - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the jerk (m/s^3) of the subject's smartphone along the Y-axis.          
FFT_BodyAccelerometerJerk_mean_Z_MEAN                           - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the jerk (m/s^3) of the subject's smartphone along the Z-axis.            
FFT_BodyAccelerometerJerk_StandardDeviation_X_MEAN              - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the jerk (m/s^3) of the subject's smartphone along the X-axis.             
FFT_BodyAccelerometerJerk_StandardDeviation_Y_MEAN              - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the jerk (m/s^3) of the subject's smartphone along the Y-axis.             
FFT_BodyAccelerometerJerk_StandardDeviation_Z_MEAN              - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the jerk (m/s^3) of the subject's smartphone along the Z-axis.             
FFT_BodyGyroscope_mean_X_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the X-axis.       
FFT_BodyGyroscope_mean_Y_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the Y-axis.     
FFT_BodyGyroscope_mean_Z_MEAN                                   - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the  Z-axis.     
FFT_BodyGyroscope_StandardDeviation_X_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the X-axis.             
FFT_BodyGyroscope_StandardDeviation_Y_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the Y-axis.               
FFT_BodyGyroscope_StandardDeviation_Z_MEAN                      - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the angular velocity of the subject's smartphone around the Z-axis.               
FFT_BodyAccelerometerMagnitude_mean_MEAN                        - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the magnitude of acceleration of the subject's smartphone.  
FFT_BodyAccelerometerMagnitude_StandardDeviation_MEAN           - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the magnitude of acceleration of the subject's smartphone.       
FFT_BodyBodyAccelerometerJerkMagnitude_mean_MEAN                - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the magnitude of the linear jerk of the subject's smartphone.
FFT_BodyBodyAccelerometerJerkMagnitude_StandardDeviation_MEAN   - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the magnitude of the linear jerk of the subject's smartphone.    
FFT_BodyBodyGyroscopeMagnitude_mean_MEAN                        - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the magnitude of the angular velocity of the subject's smartphone.     
FFT_BodyBodyGyroscopeMagnitude_StandardDeviation_MEAN           - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the magnitude of the angular velocity of the subject's smartphone.      
FFT_BodyBodyGyroscopeJerkMagnitude_mean_MEAN                    - the average (mean) over Subject and ActivityLabel of the time-window mean of the Fast-Fourier Transform of the angular jerk of the subject's smartphone.     
FFT_BodyBodyGyroscopeJerkMagnitude_StandardDeviation_MEAN       - the average (mean) over Subject and ActivityLabel of of the time-window standard deviation of the Fast-Fourier Transform of the angular jerk of the subject's smartphone.







