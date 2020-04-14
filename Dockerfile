FROM danielguerra/ubuntu-xrdp

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y alien libice6 libfreetype6 libglu1 libxcomposite1 libxcursor1 libxi6 libxtst6 libfontconfig1 libxrandr2 libasound2 libegl1 libnss3
RUN apt-get install -y gcc-multilib g++-multilib zip xvfb
RUN apt-get install -y xterm

# Install Python
RUN apt-get install -y python3.6 python3-pip

CMD ["./bash"]
