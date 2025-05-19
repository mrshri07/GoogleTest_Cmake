echo "🔁 Starting pipeline..."

PROJECT_ROOT="$(pwd)"
BUILD_DIR="$PROJECT_ROOT/build"

echo " build directory :$build_dir"

echo "🧹 Cleaning old build..."
rm -rf "$BUILD_DIR"
mkdir "$BUILD_DIR"
cd "$BUILD_DIR" || exit 1

echo "⚙️ Running cmake -G Ninja .."
cmake -G Ninja ..

if [ $? -ne 0 ]; then
echo "❌ CMake configuration failed."
exit 1
fi

echo "🔨 Building project..."
ninja

if [ $? -ne 0 ]; then
echo "❌ Build failed."
exit 1
fi


