
#include <linux/types.h>
#include <linux/string.h>
#include <linux/export.h>
#ifndef __HAVE_ARCH_STRCPY
/**
 * strcpy - Copy a %NUL terminated string
 * @dest: Where to copy the string to
 * @src: Where to copy the string from
 */
#undef strcpy
char *strcpy(char *dest, const char *src) {
  char *tmp = dest;

  while ((*dest++ = *src++) != '\0') /* nothing */
    ;
  return tmp;
}
EXPORT_SYMBOL(strcpy);
#endif

#ifndef __HAVE_ARCH_STRNCPY
/**
 * strncpy - Copy a length-limited, C-string
 * @dest: Where to copy the string to
 * @src: Where to copy the string from
 * @count: The maximum number of bytes to copy
 *
 * The result is not %NUL-terminated if the source exceeds
 * @count bytes.
 *
 * In the case where the length of @src is less than  that  of
 * count, the remainder of @dest will be padded with %NUL.
 *
 */
char *strncpy(char *dest, const char *src, size_t count) {
  char *tmp = dest;

  while (count) {
    if ((*tmp = *src) != 0) src++;
    tmp++;
    count--;
  }
  return dest;
}
EXPORT_SYMBOL(strncpy);
#endif

#ifndef __HAVE_ARCH_MEMCPY
/**
 * memcpy - Copy one area of memory to another
 * @dest: Where to copy to
 * @src: Where to copy from
 * @count: The size of the area.
 *
 * You should not use this function to access IO space, use memcpy_toio()
 * or memcpy_fromio() instead.
 */
void *memcpy(void *dest, const void *src, size_t count) {
  while(1){}
  char *tmp = dest;
  const char *s = src;

  while (count--) *tmp++ = *s++;
  return dest;
}
EXPORT_SYMBOL(memcpy);
#endif

#ifndef __HAVE_ARCH_MEMMOVE
/**
 * memmove - Copy one area of memory to another
 * @dest: Where to copy to
 * @src: Where to copy from
 * @count: The size of the area.
 *
 * Unlike memcpy(), memmove() copes with overlapping areas.
 */
void *memmove(void *dest, const void *src, size_t count) {
  char *tmp;
  const char *s;

  if (dest <= src) {
    tmp = dest;
    s = src;
    while (count--) *tmp++ = *s++;
  } else {
    tmp = dest;
    tmp += count;
    s = src;
    s += count;
    while (count--) *--tmp = *--s;
  }
  return dest;
}
EXPORT_SYMBOL(memmove);
#endif

#ifndef __HAVE_ARCH_MEMCMP
/**
 * memcmp - Compare two areas of memory
 * @cs: One area of memory
 * @ct: Another area of memory
 * @count: The size of the area.
 */
#undef memcmp
__visible int memcmp(const void *cs, const void *ct, size_t count) {
  const unsigned char *su1, *su2;
  int res = 0;

  for (su1 = cs, su2 = ct; 0 < count; ++su1, ++su2, count--)
    if ((res = *su1 - *su2) != 0) break;
  return res;
}
EXPORT_SYMBOL(memcmp);
#endif

#ifndef __HAVE_ARCH_STRNLEN
/**
 * strnlen - Find the length of a length-limited string
 * @s: The string to be sized
 * @count: The maximum number of bytes to search
 */
size_t strnlen(const char *s, size_t count) {
  const char *sc;

  for (sc = s; count-- && *sc != '\0'; ++sc) /* nothing */
    ;
  return sc - s;
}
EXPORT_SYMBOL(strnlen);
#endif

#ifndef __HAVE_ARCH_MEMSET
/**
 * memset - Fill a region of memory with the given value
 * @s: Pointer to the start of the area.
 * @c: The byte to fill the area with
 * @count: The size of the area.
 *
 * Do not use memset() to access IO space, use memset_io() instead.
 */
void *memset(void *s, int c, size_t count) {
  char *xs = s;

  while (count--) *xs++ = c;
  return s;
}
EXPORT_SYMBOL(memset);
#endif

#ifndef __HAVE_ARCH_STRSTR
/**
 * strstr - Find the first substring in a %NUL terminated string
 * @s1: The string to be searched
 * @s2: The string to search for
 */
char *strstr(const char *s1, const char *s2) {
  size_t l1, l2;

  l2 = strlen(s2);
  if (!l2) return (char *)s1;
  l1 = strlen(s1);
  while (l1 >= l2) {
    l1--;
    if (!memcmp(s1, s2, l2)) return (char *)s1;
    s1++;
  }
  return NULL;
}
EXPORT_SYMBOL(strstr);
#endif