NAME= libasm.a

all: $(NAME)

$(NAME): 
	nasm -fmacho64 ft_strlen.s
	nasm -fmacho64 ft_strcmp.s
	nasm -fmacho64 ft_strdup.s
	nasm -fmacho64 ft_read.s
	nasm -fmacho64 ft_strcpy.s
	nasm -fmacho64 ft_write.s
	ar rc $(NAME) *.o
	ranlib $(NAME)
	gcc -Wall -Werror -Wextra main.c $(NAME)
clean:
	rm -f *.o
fclaen: clean
	rm -f $(NAME)
re: fclaen all