NAME= libasm.a

all: $(NAME)

$(NAME): 
	nasm -f elf64 ft_strlen.s
	nasm -f elf64 ft_strcmp.s
	nasm -f elf64 ft_strdup.s
	nasm -f elf64 ft_read.s
	nasm -f elf64 ft_strcpy.s
	nasm -f elf64 ft_write.s
	ar rc $(NAME) *.o
	ranlib $(NAME)
	gcc -Wall -Werror -Wextra main.c $(NAME) -no-pie
clean:
	rm -f *.o
fclaen: clean
	rm -f $(NAME)
re: fclaen all