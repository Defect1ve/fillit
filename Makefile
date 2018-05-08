# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkiselev <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/22 20:42:59 by tkiselev          #+#    #+#              #
#    Updated: 2018/04/05 14:41:32 by tkiselev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=gcc -Wall -Wextra -Werror
NAME=fillit
LIBA=libft.a
DIR=fillit_dir/
SRCS=$(addprefix $(DIR),fillit.c ft_solver.c algorithm.c)

all: $(LIBA) $(NAME)

$(NAME): $(SRCS)
	 $(CC) -L. ./libft/$(LIBA) $(SRCS) -o $(NAME)

$(LIBA):
	make -C ./libft

clean:
	rm -f *.o ./libft/*.o

fclean: clean
	rm -f $(NAME) ./libft/$(LIBA)

re: fclean all
