cmake_minimum_required(VERSION 3.6)
project(file-transfer-over-soundcard)

set(CMAKE_C_STANDARD 11)

#set(SOURCE_FILES main.c)
#add_executable(teste ${SOURCE_FILES})

add_executable(analyze analyze.c fourier.c)
target_link_libraries(analyze m)

add_executable(analyze_psk analyze_psk.c fourier.c)
target_link_libraries(analyze_psk m)

add_executable(generate generate.c fourier.c)
target_link_libraries(generate m)

add_executable(generate_psk generate_psk.c fourier.c)
target_link_libraries(generate_psk m)

add_executable(playback playback.c)
target_link_libraries(playback m)

add_executable(record record.c)
target_link_libraries(record m)
