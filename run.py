
import subprocess
import glob
import os
import sys

def getLastModifiedFile():
    # files_in_cur_dir = os.listdir('.')
    files_in_cur_dir = glob.glob('./*.cpp')
    return max(files_in_cur_dir, key=os.path.getmtime)

fileName = getLastModifiedFile()
print(fileName)

cmd = 'g++ -std=c++17 ./' + fileName

res = subprocess.run(['g++', '-std=c++17', fileName])
if res.returncode == 0:
    subprocess.run(['./a.out'] + sys.argv[1:])

