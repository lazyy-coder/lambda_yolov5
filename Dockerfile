FROM amazon/aws-lambda-python:3.8

RUN /var/lang/bin/python3.8 -m pip install --upgrade pip

RUN yum install git -y

RUN git clone https://github.com/lazyy-coder/lambda_yolov5.git

RUN pip install -r lambda_yolov5/requirements.txt

RUN cp lambda_yolov5/evenvt.py /var/task/

CMD ["evenvt.handler"]