var decimal = 10 // ten
decimal = -1000 // negative one thousand
decimal = -1_000 // equivalent to -1000
decimal = 42_42_42 // equivalent to 424242
decimal = 0755 // equivalent to 755, NOT 493 as in some other languages
decimal = 0123456789

var hexadecimal = 0x10 // equivalent to 16
hexadecimal = 0x7FFFFFFF
hexadecimal = 0xBadFace
hexadecimal = 0x0123_4567_89ab_cdef

var octal = 0o10 // equivalent to 8
print("octal = \(octal)")
octal = 0o755 // equivalent to 493
octal = -0o0123_4567

var binary = -0b101010 // equivalent to -42
print("binary = \(binary)")
binary = 0b111_101_101 // equivalent to 0o755
binary = 0b1011_1010_1101 // equivalent to 0xB_A_D
