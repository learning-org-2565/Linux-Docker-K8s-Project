FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Till now we we did is we create the base linux machine without kernal and on top of that we created on working directory , even you can add on existing one but that is not a good practice so we created our custom workdir then we have copied that dependencies like requirements.txt and then installed that dependencies to run the applciation , it will helps like runtime dependencies and env
# now we will copy t he actual application source code to the working directory so this will takes existing dependeones to run the source code 

COPY app.py .
# now we have copied the source code to the working directory /app

EXPOSE 5000

CMD ["python", "app.py"]
