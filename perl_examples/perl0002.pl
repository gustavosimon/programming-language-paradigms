#!/usr/bin/perl -w
use strict;
print "What is your username? ";	# escreve na tela
my $username;				# declara atraves da funcao my
					# a variavel username
$username = <STDIN>;			# le a variavel username do console
chomp( $username );			# retira caracteres de controle
print "Hello, $username.\n";		# escreve na tela
