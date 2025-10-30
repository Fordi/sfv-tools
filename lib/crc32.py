import sys;
import zlib;
print("{:08x}".format(zlib.crc32(sys.stdin.buffer.read())%(1<<32)))
