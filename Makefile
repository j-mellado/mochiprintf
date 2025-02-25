# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmellado <jmellado@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/31 12:27:48 by jmellado          #+#    #+#              #
#    Updated: 2025/01/31 12:27:49 by jmellado         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



NAME = libftprintf.a

Sources = ft_putchar.c\
	ft_printf_string.c\
	ft_printf_pointer.c\
	ft_printf_number.c\
	ft_printf_unsigned.c\
	ft_printf_hex.c\
	ft_printf.c

OBJ = $(Sources:.c=.o)

flags = -Wall -Wextra -Werror

all:$(NAME)
$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

$(OBJ): $(Sources)
	cc -c $(Sources) -Includes $(flags)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re
