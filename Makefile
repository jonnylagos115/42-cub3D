# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jlagos <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/06 15:42:04 by jlagos            #+#    #+#              #
#    Updated: 2020/09/06 15:42:12 by jlagos           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = cub3D

CC = gcc
FLAGS = -O3 -Wall -Werror -Wextra -I.
LIBS = -Lmlx_linux -lmlx_Linux -L/usr/lib -Imlx_linux -lXext -lX11 -lm -lz

SRCS = key_handling.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)	
	@$(CC) $(FLAGS) -o $(NAME) $(OBJS) $(LIBS)

clean:
	@rm -f $(OBJS)
fclean: clean
	-@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re