NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror

M_SRCS =	ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_strlen.c \
			ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_strchr.c \
			ft_strrchr.c

M_OBJS = $(M_SRCS:.c=.o)

all: $(NAME)

$(NAME): $(M_OBJS)
	ar rc $(NAME) $(M_OBJS)

%.o: %.c
	${CC} $(CFLAGS) -c $< -o $@

clean:
	rm -f $(M_OBJS)

fclean:
	rm -f $(M_OBJS) $(NAME)

re: fclean all
	
.PHONY: all clean fclean re