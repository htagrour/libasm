#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
       #include <sys/types.h>
       #include <sys/stat.h>
       #include <fcntl.h>
int ft_write(int fd, const char *str, size_t count);
int ft_strlen(char *str);
int ft_strcmp(const char *s1, const char *s2);
char *ft_strcpy(char *s1, const char *s2);
char *ft_strdup(char *str);
int ft_read(int fd, char *str, int count);
int main()
{   
    //char *str = malloc(13);
   // int fd = open("main.c", O_RDONLY);
   // int i = ft_read(1, str, 12);
   // str[13] = 0;
   // printf("%s\n",str);
   // printf("%d",i);
    ft_write(-15, "hello world", 2);
    return (0);
}