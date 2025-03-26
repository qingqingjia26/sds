# get current file dir
CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"
rm -rf build
mkdir -p build && cd build && cmake .. && make