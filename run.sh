echo ""
echo "=========================================="
echo "ASSIGNMENT 1: x86 Assembly"
echo "=========================================="

echo "Building assembly programs..."
make clean 2>/dev/null
make 2>/dev/null && echo "✓ All assembly programs built"

echo ""
echo "Running Task 1 (Addition):"
./task1
echo ""
echo "Running Task 1.2 (Hello World):"
./task1_2
echo ""
echo "Running Task 2 (Array Sum):"
./task2_array
echo ""
echo "task2_loop "
./task2_loop
