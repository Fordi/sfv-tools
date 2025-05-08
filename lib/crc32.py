import sys;
import zlib;
print("{:x}".format(zlib.crc32(sys.stdin.buffer.read())%(1<<32)))
