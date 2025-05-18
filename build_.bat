#!/bin/bash


echo "[🧹] Cleaning build directory..."
rm -rf build
mkdir build
cd build

echo "[🛠️] Configuring with CMake..."
cmake ..

echo "[🚀] Building the project..."
make -j$(nproc)

echo "[✅] Build finished."
