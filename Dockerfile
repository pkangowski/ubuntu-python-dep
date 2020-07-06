FROM danielguerra/ubuntu-xrdp

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y alien libice6 libfreetype6 libglu1 libxcomposite1 libxcursor1 libxi6 libxtst6 libfontconfig1 libxrandr2 libasound2 libegl1 libnss3
RUN apt-get install -y gcc-multilib g++-multilib zip xvfb
RUN apt-get install -y xterm nano

# Install Python
RUN apt-get install -y python3.6 python3-pip

# Install additional dependencies for 2021
RUN apt-get install -y alien libxkbcommon-x11-0 libglu1-mesa libpng16-16 libwebpmux3 libwebpdemux2 libminizip1 libevent-2.1-6 libsnappy1v5
# RUN apt-get install -y libre2-5 #Error: Unable to locate package libre2-5
RUN ln -s libevent-2.1.so.6 /usr/lib/x86_64-linux-gnu/libevent-2.0.so.5

CMD ["./bash"]
