import base64
import hashlib
import hmac
import struct
import time

"""
back code

QTHCDFP7KBW6LZ4X
HP746V4TNZ4PORST
NPYMPLRBXZQCAUZQ
OJD4A5DZU6OQQAQX
3ADERPIIR6WABEME
QBIDZWFJYETS6EIV
6YYZJWFEWPSKIBNO
56XPRW5PGWZQTYUK
L5LULTB2B3C3KUK4
24RNCGVTZJ6KXNPY
"""


def calc_google_code(secret_key):
    """神奇代码，使用secert key计算出动态验证码.

    注意time.time()获得的系统时间的准确性，误差过大会导致获得错误的验证码

    Args:
        secret_key: 服务端和客户端共有的密钥

    Returns:
        str类型，长度为6的动态验证码

    """
    input = int(time.time()) // 30
    add_len = len(secret_key) % 8
    if add_len > 0:
        secret_key += "=" * (8 - add_len)
    key = base64.b32decode(secret_key)
    msg = struct.pack(">Q", input)
    google_code = hmac.new(key, msg, hashlib.sha1).digest()
    o = google_code[19] & 15
    return f"{(struct.unpack('>I', google_code[o:o + 4])[0] & 0x7fffffff) % 1000000:0>6d}"


if __name__ == "__main__":
    SD_CF_secret_key = "GCOYHISY"
    print(calc_google_code(SD_CF_secret_key))
