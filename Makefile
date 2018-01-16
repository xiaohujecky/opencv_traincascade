OpenCV_INC_PATH=/usr/local/include
OpenCV_LIB_PATH=/usr/local/lib
VPATH=$(OpenCV_INC_PATH)
C_ARGS=-g -Wno-unused-result -O2 -std=c++11
TARGET=traincascade 
CXX=g++
CC=gcc
%.o: %.cpp
	$(CXX) $(C_ARGS) -c $^ -o $@ -I$(OpenCV_INC_PATH)
objects=boost.o features.o HOGfeatures.o haarfeatures.o imagestorage.o lbpfeatures.o traincascade.o cascadeclassifier.o 
$(TARGET): $(objects)
	$(CXX) $(C_ARGS) $^ -o $@ -I$(OpenCV_INC_PATH) -L$(OpenCV_LIB_PATH) `pkg-config --cflags --libs opencv`
clean:
	rm -f *.o $(TARGET)

