#cm
#https://docs.opencv.org/4.0.0/d7/d9f/tutorial_linux_install.html

#sudo apt-get install gtk-3-examples
#pkg-config
#apt-get 등으로 library 는 설치했는데 컴파일에 필요한 header 파일 들과 .so 파일들이 어디 있는지
#pkg-config --list-all

#pip3 install numpy
#The scripts f2py, f2py3 and f2py3.8 are installed in '/home/qhrqufdlek/.local/bin' which is not on PATH.
#numpy                  1.23.2

#FFmpeg
#모든 동영상, 음악, 사진 포맷들의 디코딩과 인코딩을 목표로 만들어지고 있는 LGPL과 GPL 라이선스[1]를 따르는 오픈 소스 프로젝트.

#https://velog.io/@717lumos/C-Ubuntu-VS-Code-%ED%99%98%EA%B2%BD%EC%97%90%EC%84%9C-C-OpenCV-%EC%BD%94%EB%93%9C-%EC%BB%B4%ED%8C%8C%EC%9D%BC%ED%95%98%EA%B8%B0

cmake_minimum_required(VERSION 2.8)
project( convert_color )
find_package( OpenCV REQUIRED ) # 환경 변수 들을 찾아서등록
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( convert_color convert_color.cpp )
target_link_libraries( convert_color ${OpenCV_LIBS} )
