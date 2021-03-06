#include "disp.h"
#include "hw.h"

extern unsigned char lcd_pix_buffer[132*4];

const char font5x7[455] =
   {0x00, 0x00, 0x00, 0x00, 0x00 ,  // sp
    0x00, 0x00, 0x2f, 0x00, 0x00 ,  // !
    0x00, 0x07, 0x00, 0x07, 0x00 ,  // "
    0x14, 0x7f, 0x14, 0x7f, 0x14 ,  // #
    0x24, 0x2a, 0x7f, 0x2a, 0x12 ,  // $
    0xc4, 0xc8, 0x10, 0x26, 0x46 ,  // %
    0x36, 0x49, 0x55, 0x22, 0x50 ,  // &
    0x00, 0x05, 0x03, 0x00, 0x00 ,  // '
    0x00, 0x1c, 0x22, 0x41, 0x00 ,  // (
    0x00, 0x41, 0x22, 0x1c, 0x00 ,  // )
    0x14, 0x08, 0x3E, 0x08, 0x14 ,  // *
    0x08, 0x08, 0x3E, 0x08, 0x08 ,  // +
    0x00, 0x00, 0x50, 0x30, 0x00 ,  // ,
    0x10, 0x10, 0x10, 0x10, 0x10 ,  // -
    0x00, 0x60, 0x60, 0x00, 0x00 ,  // .
    0x20, 0x10, 0x08, 0x04, 0x02 ,  // /
    0x3E, 0x51, 0x49, 0x45, 0x3E ,  // 0
    0x00, 0x42, 0x7F, 0x40, 0x00 ,  // 1
    0x42, 0x61, 0x51, 0x49, 0x46 ,  // 2
    0x21, 0x41, 0x45, 0x4B, 0x31 ,  // 3
    0x18, 0x14, 0x12, 0x7F, 0x10 ,  // 4
    0x27, 0x45, 0x45, 0x45, 0x39 ,  // 5
    0x3C, 0x4A, 0x49, 0x49, 0x30 ,  // 6
    0x01, 0x71, 0x09, 0x05, 0x03 ,  // 7
    0x36, 0x49, 0x49, 0x49, 0x36 ,  // 8
    0x06, 0x49, 0x49, 0x29, 0x1E ,  // 9
    0x00, 0x36, 0x36, 0x00, 0x00 ,  // :
    0x00, 0x56, 0x36, 0x00, 0x00 ,  // ;
    0x08, 0x14, 0x22, 0x41, 0x00 ,  // <
    0x14, 0x14, 0x14, 0x14, 0x14 ,  // =
    0x00, 0x41, 0x22, 0x14, 0x08 ,  // >
    0x02, 0x01, 0x51, 0x09, 0x06 ,  // ?
    0x32, 0x49, 0x59, 0x51, 0x3E ,  // @
    0x7E, 0x11, 0x11, 0x11, 0x7E ,  // A
    0x7F, 0x49, 0x49, 0x49, 0x36 ,  // B
    0x3E, 0x41, 0x41, 0x41, 0x22 ,  // C
    0x7F, 0x41, 0x41, 0x22, 0x1C ,  // D
    0x7F, 0x49, 0x49, 0x49, 0x41 ,  // E
    0x7F, 0x09, 0x09, 0x09, 0x01 ,  // F
    0x3E, 0x41, 0x49, 0x49, 0x7A ,  // G
    0x7F, 0x08, 0x08, 0x08, 0x7F ,  // H
    0x00, 0x41, 0x7F, 0x41, 0x00 ,  // I
    0x20, 0x40, 0x41, 0x3F, 0x01 ,  // J
    0x7F, 0x08, 0x14, 0x22, 0x41 ,  // K
    0x7F, 0x40, 0x40, 0x40, 0x40 ,  // L
    0x7F, 0x02, 0x0C, 0x02, 0x7F ,  // M
    0x7F, 0x04, 0x08, 0x10, 0x7F ,  // N
    0x3E, 0x41, 0x41, 0x41, 0x3E ,  // O
    0x7F, 0x09, 0x09, 0x09, 0x06 ,  // P
    0x3E, 0x41, 0x51, 0x21, 0x5E ,  // Q
    0x7F, 0x09, 0x19, 0x29, 0x46 ,  // R
    0x46, 0x49, 0x49, 0x49, 0x31 ,  // S
    0x01, 0x01, 0x7F, 0x01, 0x01 ,  // T
    0x3F, 0x40, 0x40, 0x40, 0x3F ,  // U
    0x1F, 0x20, 0x40, 0x20, 0x1F ,  // V
    0x3F, 0x40, 0x38, 0x40, 0x3F ,  // W
    0x63, 0x14, 0x08, 0x14, 0x63 ,  // X
    0x07, 0x08, 0x70, 0x08, 0x07 ,  // Y
    0x61, 0x51, 0x49, 0x45, 0x43 ,  // Z
    0x00, 0x7F, 0x41, 0x41, 0x00 ,  // [
    0x55, 0x2A, 0x55, 0x2A, 0x55 ,  // 55
    0x00, 0x41, 0x41, 0x7F, 0x00 ,  // ]
    0x04, 0x02, 0x01, 0x02, 0x04 ,  // ^
    0x40, 0x40, 0x40, 0x40, 0x40 ,  // _
    0x00, 0x01, 0x02, 0x04, 0x00 ,  // '
    0x20, 0x54, 0x54, 0x54, 0x78 ,  // a
    0x7F, 0x48, 0x44, 0x44, 0x38 ,  // b
    0x38, 0x44, 0x44, 0x44, 0x20 ,  // c
    0x38, 0x44, 0x44, 0x48, 0x7F ,  // d
    0x38, 0x54, 0x54, 0x54, 0x18 ,  // e
    0x08, 0x7E, 0x09, 0x01, 0x02 ,  // f
    0x0C, 0x52, 0x52, 0x52, 0x3E ,  // g
    0x7F, 0x08, 0x04, 0x04, 0x78 ,  // h
    0x00, 0x44, 0x7D, 0x40, 0x00 ,  // i
    0x20, 0x40, 0x44, 0x3D, 0x00 ,  // j
    0x7F, 0x10, 0x28, 0x44, 0x00 ,  // k
    0x00, 0x41, 0x7F, 0x40, 0x00 ,  // l
    0x7C, 0x04, 0x18, 0x04, 0x78 ,  // m
    0x7C, 0x08, 0x04, 0x04, 0x78 ,  // n
    0x38, 0x44, 0x44, 0x44, 0x38 ,  // o
    0x7C, 0x14, 0x14, 0x14, 0x08 ,  // p
    0x08, 0x14, 0x14, 0x18, 0x7C ,  // q
    0x7C, 0x08, 0x04, 0x04, 0x08 ,  // r
    0x48, 0x54, 0x54, 0x54, 0x20 ,  // s
    0x04, 0x3F, 0x44, 0x40, 0x20 ,  // t
    0x3C, 0x40, 0x40, 0x20, 0x7C ,  // u
    0x1C, 0x20, 0x40, 0x20, 0x1C ,  // v
    0x3C, 0x40, 0x30, 0x40, 0x3C ,  // w
    0x44, 0x28, 0x10, 0x28, 0x44 ,  // x
    0x0C, 0x50, 0x50, 0x50, 0x3C ,  // y
    0x44, 0x64, 0x54, 0x4C, 0x44};  // z

// ascii table, starting with character blank (32)
// size is 8x14
const unsigned char ascii_tab[96][14] = {
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, // space (32)
{ 0x00, 0x00, 0x00, 0x18, 0x3c, 0x3c, 0x3c, 0x18, 0x18, 0x00, 0x18, 0x18, 0x00, 0x00}, //!
{ 0x00, 0x66, 0x66, 0x66, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, //"
{ 0x00, 0x00, 0x00, 0x6c, 0x6c, 0xfe, 0x6c, 0x6c, 0x6c, 0xfe, 0x6c, 0x6c, 0x00, 0x00}, //#
{ 0x00, 0x18, 0x18, 0x7c, 0xc6, 0xc2, 0xc0, 0x7c, 0x06, 0x86, 0xc6, 0x7c, 0x18, 0x18}, //$
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0xc2, 0xc6, 0x0c, 0x18, 0x30, 0x66, 0xc6, 0x00, 0x00}, // %
{ 0x00, 0x00, 0x00, 0x38, 0x6c, 0x6c, 0x38, 0x76, 0xdc, 0xcc, 0xcc, 0x76, 0x00, 0x00}, // &
{ 0x00, 0x18, 0x18, 0x18, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, // '
{ 0x00, 0x00, 0x00, 0x0c, 0x18, 0x30, 0x30, 0x30, 0x30, 0x30, 0x18, 0x0c, 0x00, 0x00}, // (
{ 0x00, 0x00, 0x00, 0x30, 0x18, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x18, 0x30, 0x00, 0x00}, // )
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x3c, 0xff, 0x3c, 0x66, 0x00, 0x00, 0x00, 0x00}, // *
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x7e, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00}, // +
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x18, 0x30, 0x00}, // ?
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, // -
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00}, // .
{ 0x00, 0x00, 0x00, 0x02, 0x06, 0x0c, 0x18, 0x30, 0x60, 0xc0, 0x80, 0x00, 0x00, 0x00}, // /
{ 0x00, 0x00, 0x00, 0x38, 0x6c, 0xc6, 0xc6, 0xd6, 0xc6, 0xc6, 0x6c, 0x38, 0x00, 0x00}, // 0 (48-32)
{ 0x00, 0x00, 0x00, 0x18, 0x38, 0x78, 0x18, 0x18, 0x18, 0x18, 0x18, 0x7e, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0x06, 0x0c, 0x18, 0x30, 0x60, 0xc6, 0xfe, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0x06, 0x06, 0x3c, 0x06, 0x06, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x0c, 0x1c, 0x3c, 0x6c, 0xcc, 0xfe, 0x0c, 0x0c, 0x1e, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xfe, 0xc0, 0xc0, 0xc0, 0xfc, 0x06, 0x06, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x38, 0x60, 0xc0, 0xc0, 0xfc, 0xc6, 0xc6, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xfe, 0xc6, 0x06, 0x0c, 0x18, 0x30, 0x30, 0x30, 0x30, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc6, 0xc6, 0x7c, 0xc6, 0xc6, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc6, 0xc6, 0x7e, 0x06, 0x06, 0x0c, 0x78, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x18, 0x18, 0x30, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x0c, 0x18, 0x30, 0x60, 0xc0, 0x60, 0x30, 0x18, 0x0c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7e, 0x00, 0x00, 0x7e, 0x00, 0x00, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x60, 0x30, 0x18, 0x0c, 0x06, 0x0c, 0x18, 0x30, 0x60, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc6, 0x0c, 0x18, 0x18, 0x00, 0x18, 0x18, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc6, 0xde, 0xde, 0xde, 0xdc, 0xc0, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x10, 0x38, 0x6c, 0xc6, 0xc6, 0xfe, 0xc6, 0xc6, 0xc6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xfc, 0x66, 0x66, 0x66, 0x7c, 0x66, 0x66, 0x66, 0xfc, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x3c, 0x66, 0xc2, 0xc0, 0xc0, 0xc0, 0xc2, 0x66, 0x3c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xf8, 0x6c, 0x66, 0x66, 0x66, 0x66, 0x66, 0x6c, 0xf8, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xfe, 0x66, 0x62, 0x68, 0x78, 0x68, 0x62, 0x66, 0xfe, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xfe, 0x66, 0x62, 0x68, 0x78, 0x68, 0x60, 0x60, 0xf0, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x3c, 0x66, 0xc2, 0xc0, 0xc0, 0xde, 0xc6, 0x66, 0x3a, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xc6, 0xc6, 0xc6, 0xc6, 0xfe, 0xc6, 0xc6, 0xc6, 0xc6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x3c, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x1e, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0xcc, 0xcc, 0x78, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xe6, 0x66, 0x6c, 0x6c, 0x78, 0x6c, 0x6c, 0x66, 0xe6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xf0, 0x60, 0x60, 0x60, 0x60, 0x60, 0x62, 0x66, 0xfe, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xc6, 0xee, 0xfe, 0xd6, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xc6, 0xe6, 0xf6, 0xfe, 0xde, 0xce, 0xc6, 0xc6, 0xc6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xfc, 0x66, 0x66, 0x66, 0x7c, 0x60, 0x60, 0x60, 0xf0, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0xd6, 0xde, 0x7c, 0x0e, 0x00},
{ 0x00, 0x00, 0x00, 0xfc, 0x66, 0x66, 0x66, 0x7c, 0x6c, 0x66, 0x66, 0xe6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc6, 0x60, 0x38, 0x0c, 0xc6, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x7e, 0x7e, 0x5a, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0xc6, 0x6c, 0x38, 0x10, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xc6, 0xc6, 0xc6, 0xc6, 0xd6, 0xd6, 0xfe, 0x6c, 0x6c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xc6, 0xc6, 0xc6, 0x7c, 0x38, 0x7c, 0xc6, 0xc6, 0xc6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x66, 0x66, 0x66, 0x66, 0x3c, 0x18, 0x18, 0x18, 0x3c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xfe, 0xc6, 0x8c, 0x18, 0x30, 0x60, 0xc2, 0xc6, 0xfe, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x3c, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x3c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x80, 0xc0, 0xe0, 0x70, 0x38, 0x1c, 0x0e, 0x06, 0x02, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x3c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x3c, 0x00, 0x00},
{ 0x10, 0x38, 0x6c, 0xc6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff},
{ 0x00, 0x30, 0x18, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x0c, 0x7c, 0xcc, 0xcc, 0x76, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0xe0, 0x60, 0x60, 0x78, 0x6c, 0x66, 0x66, 0x66, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc0, 0xc0, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x1c, 0x0c, 0x0c, 0x3c, 0x6c, 0xcc, 0xcc, 0xcc, 0x76, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xfe, 0xc0, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x1c, 0x36, 0x32, 0x30, 0x7c, 0x30, 0x30, 0x30, 0x78, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0xcc, 0xcc, 0xcc, 0x7c, 0x0c, 0xcc, 0x78},
{ 0x00, 0x00, 0x00, 0xe0, 0x60, 0x60, 0x6c, 0x76, 0x66, 0x66, 0x66, 0xe6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x38, 0x18, 0x18, 0x18, 0x18, 0x3c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x06, 0x06, 0x00, 0x0e, 0x06, 0x06, 0x06, 0x06, 0x66, 0x66, 0x3c},
{ 0x00, 0x00, 0x00, 0xe0, 0x60, 0x60, 0x66, 0x6c, 0x78, 0x6c, 0x66, 0xe6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x38, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xec, 0xfe, 0xd6, 0xd6, 0xd6, 0xd6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdc, 0x66, 0x66, 0x66, 0x66, 0x66, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7c, 0xc6, 0xc6, 0xc6, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdc, 0x66, 0x66, 0x66, 0x7c, 0x60, 0x60, 0xf0},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0xcc, 0xcc, 0xcc, 0x7c, 0x0c, 0x0c, 0x1e},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdc, 0x76, 0x66, 0x60, 0x60, 0xf0, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7c, 0xc6, 0x70, 0x1c, 0xc6, 0x7c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x10, 0x30, 0x30, 0xfc, 0x30, 0x30, 0x30, 0x36, 0x1c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0x76, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc6, 0xc6, 0xc6, 0x6c, 0x38, 0x10, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc6, 0xc6, 0xd6, 0xd6, 0xfe, 0x6c, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc6, 0x6c, 0x38, 0x38, 0x6c, 0xc6, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc6, 0xc6, 0xc6, 0xc6, 0x7e, 0x06, 0x0c, 0x78},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfe, 0xcc, 0x18, 0x30, 0x66, 0xfe, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x0e, 0x18, 0x18, 0x18, 0x70, 0x18, 0x18, 0x18, 0x0e, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x70, 0x18, 0x18, 0x18, 0x0e, 0x18, 0x18, 0x18, 0x70, 0x00, 0x00},
{ 0x00, 0x76, 0xdc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x38, 0x6c, 0xc6, 0xc6, 0xfe, 0x00, 0x00, 0x00},
};



void print_char_b (unsigned char data,unsigned char x,unsigned char y,unsigned char invert)
{
unsigned char temp2,i,offset;
unsigned int col;
unsigned int addr, invert_mask;
if (invert==0) invert_mask = 0;
else  invert_mask = 0xFFFF;
for (offset=0;offset<8;offset++)
{
	col = 0;
	for (i=0;i<14;i++)
	{
		temp2 = ascii_tab[(data -' ')][i];
		col = col>>1;
		if ((temp2>>offset)&0x01) col = col|0x2000;
	}
//	col = ~col;
	col = col ^ invert_mask;
	addr = ((unsigned int)(x+1))*132 + y + (7-offset);
	lcd_pix_buffer[addr] = (col>>8);
	addr = ((unsigned int)(x+0))*132 + y + (7-offset);
	lcd_pix_buffer[addr] = (col&0x00FF);

}
}


void print_char (unsigned char data, unsigned char x, unsigned char y, unsigned char invert)
{
unsigned int addr;
unsigned char invert_mask;
if (invert==0) invert_mask = 0;
else  invert_mask = 0xFF;
addr = ((unsigned int)(x))*132 + y;
lcd_pix_buffer[addr] = font5x7[(((unsigned int)(data))-' ') * 5]^ invert_mask;
lcd_pix_buffer[addr+1] = font5x7[(((unsigned int)(data))-' ') * 5+1]^ invert_mask;
lcd_pix_buffer[addr+2] = font5x7[(((unsigned int)(data))-' ') * 5+2]^ invert_mask;
lcd_pix_buffer[addr+3] = font5x7[(((unsigned int)(data))-' ') * 5+3]^ invert_mask;
lcd_pix_buffer[addr+4] = font5x7[(((unsigned int)(data))-' ') * 5+4]^ invert_mask;
lcd_pix_buffer[addr+5] = 0 ^ invert_mask;
}


unsigned char print_str (char *dat, unsigned char line, unsigned char off, unsigned char type, unsigned char invert)
{
unsigned char y,width;
y=off;
if (type==BIG) width=8;
else if (type==SMALL) width=6;
	else return 255;

//if (type==BIG) line = line>>1;
while (*dat!=0x00)
	{
	if (type==BIG) print_char_b(*dat,line,y,invert);
	if (type==SMALL) print_char(*dat,line,y,invert);
	y = y+width;
	if (y>131) return(0);
	*dat++;
	}
return y;
}

void spi_data (uint8_t data)
    {
    uint8_t i;
    for (i=0;i<8;i++)
	{
	if (data&0x80)
	    {
	    D_SI_H;
	    }
	else
	    {
	    D_SI_L;
	    }
	D_CLK_L;
	data = data << 1;
	D_CLK_H;
	}
    }

void disp_cmd (uint8_t data)
    {
    D_CS_L;
    D_A0_L;
    spi_data(data);
    D_CS_H;
    }

void disp_dat (uint8_t data)
    {
    D_CS_L;
    D_A0_H;
    spi_data(data);
    D_CS_H;
    }

void disp_init (void)
    {
    D_RST_L;
    D_RST_H;
    disp_cmd(0x40);
    disp_cmd(0xA1);
    disp_cmd(0xC0);
    disp_cmd(0xA6);
    disp_cmd(0xA2);
    disp_cmd(0x2F);
    disp_cmd(0xF8);
    disp_cmd(0x00);
    disp_cmd(0x23);
    disp_cmd(0x81);
    disp_cmd(0x1F);
    disp_cmd(0xAC);
    disp_cmd(0x00);
    disp_cmd(0xAF);
    }


void set_pixel (unsigned char x, unsigned char y, unsigned char color)
{
unsigned int addr;
unsigned char shift,mask;
addr = (x) + (y/8)*132;
shift = y%8;
mask = 1<<shift;
if (color==0)
	{
	lcd_pix_buffer[addr] = lcd_pix_buffer[addr] & (~mask);
	}
if (color==1)
	{
	lcd_pix_buffer[addr] = lcd_pix_buffer[addr] | mask;
	}
if (color==2)
	{
	lcd_pix_buffer[addr] = lcd_pix_buffer[addr] ^ mask;
	}

}

void fill_disp_buff (unsigned char data)
{
unsigned char j;
unsigned int i=0;
for (j=0;j<132;j++)
    {
        lcd_pix_buffer[i++]=data;
        lcd_pix_buffer[i++]=data;
        lcd_pix_buffer[i++]=data;
        lcd_pix_buffer[i++]=data;
    }
}
/*
void refresh_lcd(void)
{
unsigned int i,j,addr;
for (i=0;i<4;i++)
	{
	disp_cmd(0x10);
	disp_cmd(0x00);
	disp_cmd(0xB0+i);
	for (j=0;j<132;j++)
		{
		addr = (i*132) + j;
		disp_dat(lcd_pix_buffer[addr]);
		}
	}
}
*/

void refresh_lcd(void)
{
unsigned int i,j,addr;
for (i=0;i<4;i++)
	{
	disp_cmd(0x10);
	disp_cmd(0x00);
	disp_cmd(0xB0+i);
	D_A0_H;
	D_CS_L;
	for (j=0;j<132;j++)
		{
		addr = (i*132) + j;
		spi_data(lcd_pix_buffer[addr]);
		}
	D_CS_H;
	}
}

void refresh_lcd_p(void)
{
unsigned int j,addr;
static row_cnt;
row_cnt++;
if (row_cnt>4) row_cnt=0;
disp_cmd(0x10);
disp_cmd(0x00);
disp_cmd(0xB0+row_cnt);
D_A0_H;
D_CS_L;
for (j=0;j<132;j++)
    {
    addr = (row_cnt*132) + j;
    spi_data(lcd_pix_buffer[addr]);
    }
D_CS_H;
}

void refresh_lcd_line(uint8_t line, uint8_t row)
{
unsigned int j,addr;
disp_cmd(0x10 + ((row>>4)&0x0F));
disp_cmd(0x00 + ((row>>0)&0x0F));
disp_cmd(0xB0+line);
D_A0_H;
D_CS_L;
for (j=row;j<132;j++)
    {
    addr = (line*132) + j;
    spi_data(lcd_pix_buffer[addr]);
    }
D_CS_H;
}
