FROM alpine:3.19
RUN echo "Hello Vivek - Jenkins Docker Build Succcessful" > /message.txt
CMD ["cat", "/message.txt"]
