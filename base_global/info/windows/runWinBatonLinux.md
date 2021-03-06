# Enable bat file execution on Ubuntu

### 1. Do this - not sure what it does
sudo sh -c "echo :WindowsBatch:E::bat::/init: > /proc/sys/fs/binfmt_misc/register"

### 2. Make them executables
chmode +x foo.bat

### 3. Run them
./foo.bat

