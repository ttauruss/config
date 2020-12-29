
import subprocess
import glob
import os

def getLastModifiedFile():
    # files_in_cur_dir = os.listdir('.')
    files_in_cur_dir = glob.glob('./*.cpp')
    return max(files_in_cur_dir, key=os.path.getmtime)

fileName = getLastModifiedFile()
print(fileName)

cmd = 'g++ -std=c++17 ./' + fileName

subprocess.run(['g++', '-std=c++17', fileName])
subprocess.run(['./a.out'])
