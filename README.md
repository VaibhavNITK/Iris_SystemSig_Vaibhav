Task1
:) Pack the rails application in a docker container image.


Step1)  First created a Dockerfile in the src directory of Rails application

Step2)  Used a Ruby image as the base image

Step3)  Copy the application code into the image

Step4)  Install dependencies using bundle install

Step5)  Expose port 3000 (or whichever port your Rails application runs on)

Step6)  Set the default command to start the Rails server
