FROM python
RUN pip install flask
COPY  ./static /home/myapp/static/
COPY  ./templates /home/myapp/templates/
COPY  designprojapp2.py /home/myapp/
EXPOSE 6060
CMD python3 /home/myapp/designprojapp2.py
