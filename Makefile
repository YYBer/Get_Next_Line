# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yli <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/12 15:25:00 by yli               #+#    #+#              #
#    Updated: 2023/02/12 15:25:02 by yli              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line.a
HEADER = get_next_line.h

CFLAGS = -Wall -Werror -Wextra

CC = cc
#VALGRIND = @valgrind --leak-check=full --show-leak-kinds=all\
#		--track-origins=yes --quiet --tool=memcheck --keep-debuginfo=yes

SRCS = get_next_line.c get_next_line_utils.c
OBJS = $(SRCS:.c=.o)


all: $(NAME)

$(NAME): $(OBJS)
#@$(CC) $(OBJS) -o $(NAME) $(CFLAGS)
	ar rcs $(NAME) $(OBJS)
	norminette $(SRCS)

clean: 
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean
	make all

PHONY: all clean fclean re
