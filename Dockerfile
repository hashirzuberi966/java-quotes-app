#1 Base Image

FROM openjdk:17-jdk-alpine

#2 Working Directory for the App
WORKDIR /app

#3 Code to create the App (Copy from Host to Container)
COPY src/Main.java Main.java
COPY quotes.txt quotes.txt

#4 Run the commands to install the libraries required or compile the code
RUN javac Main.java

#5 Expose the port on which your application listens
EXPOSE 8000

#6 Serve the application and in continous mode
CMD ["java","Main"] 



