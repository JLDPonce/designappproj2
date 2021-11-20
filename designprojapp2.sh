#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp designprojapp2.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile

echo "RUN pip install flask" >> tempdir/Dockerfile

echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  designprojapp2.py /home/myapp/" >> tempdir/Dockerfile

echo "EXPOSE 6060" >> tempdir/Dockerfile

echo "CMD python3 /home/myapp/designprojapp2.py" >> tempdir/Dockerfile

cd tempdir
docker build -t designprojapp2 .

docker run -t -d -p 6060:6060 --name designproj2running designprojapp2

docker ps -a