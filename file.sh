vi file1 // Data addedd
cat file1 // Data added

ls -l > file1 // re-write data present in file1
ls -al >> file1 // append data at end of file1
ls -al | tee -a file1 // display data screen and append to file1 