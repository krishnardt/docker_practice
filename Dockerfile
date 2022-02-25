FROM python:3.9
WORKDIR /code
COPY requirements.txt /code/requirements.txt
RUN pip3 install virtualenv
RUN virtualenv test_doc_env
ENV VIRTUAL_ENV /test_doc_env
ENV PATH /test_doc_env/bin:$PATH
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY . /code/
CMD ["uvicorn", "pilot:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
