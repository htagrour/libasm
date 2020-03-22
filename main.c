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
   // char *str = malloc(15);
    printf("%s", ft_strdup(NULL));
    return (0);
}