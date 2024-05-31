# Generate `.clang-format` file by default.
# Also make sure the clang-format tools have been installed correctly.

# Origin commands.
clang-format -style=Microsoft -dump-config > .clang-format

