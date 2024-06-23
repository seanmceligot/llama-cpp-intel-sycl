FROM intel/oneapi-basekit

ENV ZES_ENABLE_SYSMAN=1

RUN git clone https://github.com/ggerganov/llama.cpp.git

WORKDIR /llama.cpp

RUN cmake -B build -DLLAMA_SYCL=ON -DCMAKE_C_COMPILER=icx -DCMAKE_CXX_COMPILER=icpx \
    && cmake --build build --config Release -j5 -v \
    && cmake --install build --prefix /usr/


# Set the default command to run bash
CMD ["/usr/bin/llama-cli"]

