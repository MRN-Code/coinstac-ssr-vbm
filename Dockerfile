FROM coinstac/coinstac-base-python-stream

# Set the working directory
WORKDIR /computation

# Copy the current directory contents into the container
COPY requirements.txt /computation

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

RUN pip install nibabel
RUN pip install nilearn

# Copy the current directory contents into the container
COPY . /computation
