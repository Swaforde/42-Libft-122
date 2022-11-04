# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbouvera <tbouvera@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/18 09:41:19 by tbouvera          #+#    #+#              #
#    Updated: 2022/10/19 09:48:15 by tbouvera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_isalnum.c ft_strlcat.c ft_strlcpy.c ft_memcmp.c \
ft_isdigit.c ft_memcpy.c  ft_strlen.c  ft_tolower.c ft_bzero.c \
ft_isalpha.c ft_isprint.c ft_memset.c  ft_strncmp.c ft_toupper.c \
ft_isascii.c ft_memchr.c ft_strchr.c  ft_strrchr.c ft_memmove.c \
ft_strdup.c ft_calloc.c ft_atoi.c ft_substr.c ft_strjoin.c ft_strtrim.c \
ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
ft_putendl_fd.c ft_putnbr_fd.c ft_strnstr.c ft_dec_to_hex.c ft_printf.c ft_unsigned_itoa.c \
ft_print_ptr.c ft_printf_utils.c

SRCS_B = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
ft_lstdelone.c ft_lstclear.c ft_lstiter.c

OBJS = ${SRCS:.c=.o}
OBJS_B = ${SRCS_B:.c=.o}
INCLUDE = libft.h
CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

.c.o :
	${CC} ${CFLAGS} -c $< -o $(<:.c=.o)

all : ${NAME}

${NAME} : ${OBJS}
	ar rc ${NAME} ${OBJS}

bonus: ${OBJS_B} ${OBJS}
	ar rc ${NAME} ${OBJS} ${OBJS_B}

clean:
	${RM} ${OBJS} ${OBJS_B}

fclean: clean
	${RM} ${NAME}

re: fclean all

