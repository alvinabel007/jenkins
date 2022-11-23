FROM ubuntu
WORKDIR /tmp
RUN apt-get update -y && apt-get install tar -y && apt-get install git -y && apt-get install zip -y  && \ 
echo "thankyou" >  test.txt && \
echo "welcome" > test1.txt && \
mkdir example && mv test.txt example && \
mv test1.txt example && tar -cvf example.tar.gz example
CMD [ "ubuntu" ]

# FROM ubuntu
# WORKDIR /tmp
# RUN apt update && \
#     apt install -y zip tar git && \
#     echo "welcome" > test.txt && \
#     echo "thankyou" > test1.txt && \
#     mkdir example && \
#     mv test.txt example && \
#     mv test1.txt example && \
#     tar -cvf example.tar.gz example
