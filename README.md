# Libft

![42 School](https://img.shields.io/badge/42-000000?style=for-the-badge&logo=42&logoColor=white)
![C](https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white)
![Grade](https://img.shields.io/badge/Grade-125%2F125-success?style=for-the-badge)

> **Your very own C standard library - The foundation of all 42 projects**

## 📋 Overview

Libft is the first project at 42 School, where you build your own C standard library from scratch. This library recreates essential functions from `libc` and adds useful utilities that will be reused throughout the entire 42 curriculum.

**The Challenge:** Implement 43+ standard C functions without using the originals, understanding every detail of how they work under the hood. This project is the bedrock of C programming mastery at 42.

**Why this matters:**
- Deep understanding of C fundamentals and memory management
- Foundation for all subsequent 42 projects
- Learn to read and implement from technical documentation
- Master pointer manipulation and string operations
- Build a reusable codebase for future projects

## 📊 Function Count

- **34 mandatory functions** - Libc recreations and additional utilities
- **9 bonus functions** - Linked list manipulation
- **Total: 43 functions** implemented from scratch

## 🎯 Function Categories

### Part 1: Libc Functions (23 functions)

Recreations of standard C library functions with the `ft_` prefix:

#### Character Checks & Conversions
```c
int     ft_isalpha(int c);      // Check if alphabetic
int     ft_isdigit(int c);      // Check if digit
int     ft_isalnum(int c);      // Check if alphanumeric
int     ft_isascii(int c);      // Check if ASCII
int     ft_isprint(int c);      // Check if printable
int     ft_toupper(int c);      // Convert to uppercase
int     ft_tolower(int c);      // Convert to lowercase
```

#### String Operations
```c
size_t  ft_strlen(const char *s);
char    *ft_strchr(const char *s, int c);
char    *ft_strrchr(const char *s, int c);
int     ft_strncmp(const char *s1, const char *s2, size_t n);
size_t  ft_strlcpy(char *dst, const char *src, size_t size);
size_t  ft_strlcat(char *dst, const char *src, size_t size);
char    *ft_strnstr(const char *big, const char *little, size_t len);
char    *ft_strdup(const char *s);
```

#### Memory Operations
```c
void    *ft_memset(void *s, int c, size_t n);
void    ft_bzero(void *s, size_t n);
void    *ft_memcpy(void *dest, const void *src, size_t n);
void    *ft_memmove(void *dest, const void *src, size_t n);
void    *ft_memchr(const void *s, int c, size_t n);
int     ft_memcmp(const void *s1, const void *s2, size_t n);
void    *ft_calloc(size_t nmemb, size_t size);
```

#### Conversion
```c
int     ft_atoi(const char *nptr);
```

### Part 2: Additional Functions (11 functions)

Functions not in the standard library but extremely useful:

#### String Manipulation
```c
char    *ft_substr(char const *s, unsigned int start, size_t len);
char    *ft_strjoin(char const *s1, char const *s2);
char    *ft_strtrim(char const *s1, char const *set);
char    **ft_split(char const *s, char c);
char    *ft_strmapi(char const *s, char (*f)(unsigned int, char));
void    ft_striteri(char *s, void (*f)(unsigned int, char*));
```

#### Conversion
```c
char    *ft_itoa(int n);
```

#### File Descriptor Output
```c
void    ft_putchar_fd(char c, int fd);
void    ft_putstr_fd(char *s, int fd);
void    ft_putendl_fd(char *s, int fd);
void    ft_putnbr_fd(int n, int fd);
```

### Bonus: Linked List Functions (9 functions)

Complete linked list implementation with these operations:

```c
t_list  *ft_lstnew(void *content);
void    ft_lstadd_front(t_list **lst, t_list *new);
int     ft_lstsize(t_list *lst);
t_list  *ft_lstlast(t_list *lst);
void    ft_lstadd_back(t_list **lst, t_list *new);
void    ft_lstdelone(t_list *lst, void (*del)(void *));
void    ft_lstclear(t_list **lst, void (*del)(void *));
void    ft_lstiter(t_list *lst, void (*f)(void *));
t_list  *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));
```

**Linked List Structure:**
```c
typedef struct s_list
{
    void            *content;
    struct s_list   *next;
}   t_list;
```

## 🛠️ Technical Implementation

**Language:** C  
**Allowed functions:** `write`, `malloc`, `free`  
**Standard:** C99  
**Norm:** 42 School coding standard (norminette)

### Core Concepts Mastered

1. **Pointer Manipulation** - Deep understanding of pointers and memory addresses
2. **Memory Management** - Manual allocation, deallocation, and leak prevention
3. **String Operations** - Efficient string parsing and manipulation
4. **Linked Lists** - Dynamic data structure implementation
5. **Function Pointers** - Using callbacks and higher-order functions
6. **Edge Cases** - Robust handling of NULL, empty strings, overflow

## 🚀 Compilation & Usage

### Building the Library

```bash
# Clone the repository
git clone https://github.com/Axel92803/Libft.git
cd Libft

# Compile the library (mandatory part only)
make

# Compile with bonus functions
make bonus

# Clean object files
make clean

# Clean everything (including libft.a)
make fclean

# Recompile from scratch
make re
```

This creates `libft.a` - a static library ready to be linked with your projects.

### Using Libft in Your Projects

```c
// Include the header
#include "libft.h"

int main(void)
{
    char    *str;
    char    **split;
    t_list  *list;

    // String operations
    str = ft_strdup("Hello, 42!");
    ft_putstr_fd(str, 1);
    free(str);

    // String splitting
    split = ft_split("Hello World 42", ' ');
    // Use split array...
    // Don't forget to free!

    // Linked list operations
    list = ft_lstnew(ft_strdup("Node 1"));
    ft_lstadd_back(&list, ft_lstnew(ft_strdup("Node 2")));
    
    return (0);
}
```

### Compiling with Libft

```bash
# Compile your program with libft
gcc -Wall -Wextra -Werror your_program.c -L. -lft -o your_program

# Or include the path to libft
gcc -Wall -Wextra -Werror your_program.c -I./libft -L./libft -lft -o your_program
```

## 📂 Project Structure

```
libft/
├── Makefile              # Compilation rules
├── libft.h               # Header file with all prototypes
│
├── Character functions
│   ├── ft_isalpha.c
│   ├── ft_isdigit.c
│   ├── ft_isalnum.c
│   ├── ft_isascii.c
│   ├── ft_isprint.c
│   ├── ft_toupper.c
│   └── ft_tolower.c
│
├── String functions
│   ├── ft_strlen.c
│   ├── ft_strchr.c
│   ├── ft_strrchr.c
│   ├── ft_strncmp.c
│   ├── ft_strlcpy.c
│   ├── ft_strlcat.c
│   ├── ft_strnstr.c
│   ├── ft_strdup.c
│   ├── ft_substr.c
│   ├── ft_strjoin.c
│   ├── ft_strtrim.c
│   ├── ft_split.c
│   ├── ft_strmapi.c
│   └── ft_striteri.c
│
├── Memory functions
│   ├── ft_memset.c
│   ├── ft_bzero.c
│   ├── ft_memcpy.c
│   ├── ft_memmove.c
│   ├── ft_memchr.c
│   ├── ft_memcmp.c
│   └── ft_calloc.c
│
├── Conversion functions
│   ├── ft_atoi.c
│   └── ft_itoa.c
│
├── Output functions
│   ├── ft_putchar_fd.c
│   ├── ft_putstr_fd.c
│   ├── ft_putendl_fd.c
│   └── ft_putnbr_fd.c
│
└── Bonus: Linked list functions
    ├── ft_lstnew.c
    ├── ft_lstadd_front.c
    ├── ft_lstsize.c
    ├── ft_lstlast.c
    ├── ft_lstadd_back.c
    ├── ft_lstdelone.c
    ├── ft_lstclear.c
    ├── ft_lstiter.c
    └── ft_lstmap.c
```

## 🧪 Testing

### Recommended Testers

- **[Tripouille/libftTester](https://github.com/Tripouille/libftTester)** - Comprehensive automated testing
- **[jtoty/Libftest](https://github.com/jtoty/Libftest)** - Classic tester
- **[alelievr/libft-unit-test](https://github.com/alelievr/libft-unit-test)** - Unit testing framework
- **[xicodomingues/francinette](https://github.com/xicodomingues/francinette)** - All-in-one 42 tester

### Manual Testing Example

```c
#include "libft.h"
#include <stdio.h>

int main(void)
{
    // Test ft_strlen
    printf("Length: %zu\n", ft_strlen("Hello"));
    
    // Test ft_split
    char **words = ft_split("Hello World 42", ' ');
    for (int i = 0; words[i]; i++)
        printf("Word %d: %s\n", i, words[i]);
    
    // Test ft_itoa
    char *num = ft_itoa(-12345);
    printf("Number: %s\n", num);
    free(num);
    
    return (0);
}
```

### Memory Leak Testing

```bash
# Compile with debug symbols
gcc -g -Wall -Wextra -Werror test.c -L. -lft

# Check for memory leaks
valgrind --leak-check=full --show-leak-kinds=all ./a.out
```

## 💡 Key Learnings & Challenges

### Major Challenges Solved

1. **ft_split** - Dynamic 2D array allocation and string tokenization
   - Memory management with multiple allocations
   - Handling edge cases (empty strings, consecutive delimiters)

2. **ft_strtrim** - Efficient string trimming from both ends
   - Finding trim positions without unnecessary operations
   - Proper substring extraction

3. **ft_itoa** - Integer to ASCII conversion
   - Handling negative numbers and INT_MIN
   - Calculating digit count efficiently
   - Dynamic string allocation

4. **Linked List Functions** - Complete data structure implementation
   - Proper node creation and deletion
   - Memory management with function pointers
   - Mapping and iterating with callbacks

5. **ft_strlcpy / ft_strlcat** - Size-bounded string operations
   - Understanding buffer sizes vs string lengths
   - Null-termination guarantees

### What This Project Taught Me

- **C fundamentals mastery** - Every aspect of the language from scratch
- **Memory discipline** - Manual allocation, careful freeing, leak prevention
- **Code reusability** - Building a library I'll use throughout 42
- **Reading documentation** - Understanding man pages and technical specs
- **Edge case thinking** - Handling NULL, empty inputs, boundary conditions
- **Testing methodology** - Validating correctness across all scenarios

## 📊 Performance Considerations

### Optimizations Implemented

- **ft_strlen** - Simple pointer arithmetic, O(n)
- **ft_memcpy vs ft_memmove** - Overlap detection for safe copying
- **ft_split** - Single pass tokenization with efficient allocation
- **Linked lists** - O(1) operations where possible (add_front)

### Common Pitfalls Avoided

- ✅ Null pointer checks before dereferencing
- ✅ Proper malloc return value checking
- ✅ Consistent null-termination of strings
- ✅ No buffer overflows in string operations
- ✅ Memory freed in all code paths

## 🎓 42 School Evaluation

**Grade:** 125/125 ✅  
**Evaluation Date:** [18/11/2025]

**Peer Review Highlights:**
- All 43 functions implemented correctly
- Passes norminette with no errors
- No memory leaks detected
- Comprehensive edge case handling
- Clean, readable code organization
- Efficient implementations

## 🔗 Libft in Action

This library is used in these subsequent 42 projects:

- **ft_printf** - String manipulation and number conversion
- **get_next_line** - String operations and memory management
- **pipex** - String parsing and process management
- **so_long** - Map parsing with ft_split
- **minishell** - Extensive string operations
- **cub3d** - File parsing and validation
- **And many more...**

## 📚 Useful Resources

- [C Standard Library Reference](https://en.cppreference.com/w/c)
- [Linux Man Pages](https://man7.org/linux/man-pages/)
- [Understanding Linked Lists](https://www.geeksforgeeks.org/data-structures/linked-list/)
- [Memory Management in C](https://www.geeksforgeeks.org/dynamic-memory-allocation-in-c-using-malloc-calloc-free-and-realloc/)

## 📝 License

This project is part of the 42 School curriculum. Feel free to reference this code for learning purposes, but please complete your own 42 projects independently to get the full educational benefit.

## 🤝 Contributing

This is a completed school project and serves as my personal C library. However, feedback and suggestions are always welcome!

---

**Author:** Alex Tanvuia (Ionut Tanvuia)  
**42 Login:** itanvuia  
**School:** 42 London  
**Project Completed:** [October 2025]

[![42 Profile](https://img.shields.io/badge/42_Profile-itanvuia-000000?style=flat-square&logo=42)](https://profile.intra.42.fr/)

*The foundation of my 42 School journey. This library powers all my subsequent projects. Check out my other work on my [GitHub profile](https://github.com/Axel92803)!*

---

## 🌟 Function Reference Quick Guide

<details>
<summary>Click to expand full function list with descriptions</summary>

### Character Functions
| Function | Description |
|----------|-------------|
| `ft_isalpha` | Check if character is alphabetic |
| `ft_isdigit` | Check if character is a digit |
| `ft_isalnum` | Check if character is alphanumeric |
| `ft_isascii` | Check if character is ASCII (0-127) |
| `ft_isprint` | Check if character is printable |
| `ft_toupper` | Convert character to uppercase |
| `ft_tolower` | Convert character to lowercase |

### String Functions
| Function | Description |
|----------|-------------|
| `ft_strlen` | Calculate string length |
| `ft_strchr` | Locate first occurrence of character |
| `ft_strrchr` | Locate last occurrence of character |
| `ft_strncmp` | Compare n bytes of two strings |
| `ft_strlcpy` | Size-bounded string copy |
| `ft_strlcat` | Size-bounded string concatenation |
| `ft_strnstr` | Locate substring in string |
| `ft_strdup` | Duplicate string (malloc'd copy) |
| `ft_substr` | Extract substring |
| `ft_strjoin` | Join two strings |
| `ft_strtrim` | Trim characters from both ends |
| `ft_split` | Split string by delimiter |
| `ft_strmapi` | Apply function to each character (with index) |
| `ft_striteri` | Iterate and apply function to each character |

### Memory Functions
| Function | Description |
|----------|-------------|
| `ft_memset` | Fill memory with constant byte |
| `ft_bzero` | Zero out memory area |
| `ft_memcpy` | Copy memory area |
| `ft_memmove` | Copy memory area (handles overlap) |
| `ft_memchr` | Scan memory for character |
| `ft_memcmp` | Compare memory areas |
| `ft_calloc` | Allocate and zero memory |

### Conversion Functions
| Function | Description |
|----------|-------------|
| `ft_atoi` | Convert string to integer |
| `ft_itoa` | Convert integer to string |

### Output Functions
| Function | Description |
|----------|-------------|
| `ft_putchar_fd` | Output character to file descriptor |
| `ft_putstr_fd` | Output string to file descriptor |
| `ft_putendl_fd` | Output string + newline to file descriptor |
| `ft_putnbr_fd` | Output integer to file descriptor |

### Linked List Functions (Bonus)
| Function | Description |
|----------|-------------|
| `ft_lstnew` | Create new list node |
| `ft_lstadd_front` | Add node at beginning of list |
| `ft_lstsize` | Count nodes in list |
| `ft_lstlast` | Get last node of list |
| `ft_lstadd_back` | Add node at end of list |
| `ft_lstdelone` | Delete single node |
| `ft_lstclear` | Delete and free entire list |
| `ft_lstiter` | Apply function to each node |
| `ft_lstmap` | Create new list by applying function |

</details>
