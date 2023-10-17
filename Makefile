# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tle-monn <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/24 15:11:26 by tle-monn          #+#    #+#              #
#    Updated: 2023/07/24 16:27:26 by pameyer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

PRE	= .

HEAD	= .

SRC	= ft_atoi.c ft_split.c ft_strdup.c ft_strjoin.c ft_strlen.c ft_strncmp.c ft_bzero.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isalnum.c ft_isprint.c ft_tolower.c ft_toupper.c ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c ft_memcmp.c ft_memset.c ft_substr.c ft_memmove.c ft_memcpy.c ft_putendl_fd.c ft_strlcpy.c ft_calloc.c ft_itoa.c ft_strlcat.c

SRCS	= ${addprefix ${PRE}/, ${SRC}}

OBJS	= ${SRCS:.c=.o}

CC	= gcc

CFLAGS	= -Wall -Werror -Wextra


all: ${NAME}

%.o: %.c
	${CC} ${CFLAGS} -I${HEAD} -c $< -o $@

${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}

clean:
	rm -f ${OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean flean re