#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

size_t ft_strlen(const char *str);
int ft_strcmp(const char *str1, const char *str2);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
char *ft_strcpy(char *dst, const char *src);
char *ft_strdup(const char *s1);

#define SIMPLE_STRING "hello world"
#define NULL_STRING NULL
#define EMPTY_STRING ""
#define WEIRD_STRING1 "\n\vhi\0"
#define WEIRD_STRING2 "\0hello"

void ft_strlen_tests()
{
    printf("------------ft_strlen_tests-------------\n");
    printf("%zu\n", strlen(SIMPLE_STRING));
    printf("%zu\n", ft_strlen(SIMPLE_STRING));
    printf("----------------------------------------\n");
}

void ft_strcmp_tests()
{
    printf("------------ft_strcmp_tests-------------\n");
    char *str1 = "12";
    char *str2 = "13";
    printf("%d\n", strcmp(str1, str2));
    printf("%d\n", ft_strcmp(str1, str2));
    printf("----------------------------------------\n");
}

void ft_read_tests()
{
    printf("------------ft_read_tests-------------\n");
    int fd = open("file.txt", O_RDONLY);
    char *str = malloc(sizeof(char) * 20);
    int size = ft_read(fd, str, 10);
    printf("%s,%d, %d", str, size, errno);
    printf("----------------------------------------\n");
}

void ft_write_tests()
{
    printf("------------ft_write_tests-------------\n");
    int fd = open("file.txt", O_WRONLY);
    int size = ft_write(fd, SIMPLE_STRING, 10);
    printf("%d, %d", size, errno);
    printf("----------------------------------------\n");
}

void ft_strcpy_tests()
{
    printf("------------ft_strcpy-tests-------------\n");
    char *dst1 = malloc(sizeof(char) * 3);
    char *dst2 = malloc(sizeof(char) * 3);

    printf("return: %s| dest: %s\n", ft_strcpy(NULL, NULL), SIMPLE_STRING);
    printf("return: %s| dest: %s", ft_strcpy(dst2, NULL_STRING), dst2);
    printf("----------------------------------------\n");
}

void ft_strdup_tests()
{
    printf("------------ft_strdup-tests-------------\n");
    printf("%s\n", strdup(NULL_STRING));
    printf("%s", ft_strdup(NULL_STRING));
    printf("----------------------------------------\n");
}
int main()
{
    ft_strlen_tests();
    ft_strlen_tests();
    ft_read_tests();
    ft_write_tests();
    ft_strcpy_tests();
    ft_strdup_tests();
    return (0);
}