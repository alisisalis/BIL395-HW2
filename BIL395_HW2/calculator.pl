#!/usr/bin/perl
use strict;
use warnings;

print "Simple Calculator\n";
print "----------------------\n";

while (1) {
    print "\nChoose operation:\n";
    print "1. Addition\n";
    print "2. Subtraction\n";
    print "3. Multiplication\n";
    print "4. Division\n";
    print "5. Exit\n";
    print "Enter choice (1-5): ";
    
    my $choice = <STDIN>;
    chomp $choice;
    
    last if $choice == 5;
    
    if ($choice < 1 || $choice > 4) {
        print "Invalid choice. Please try again.\n";
        next;
    }
    
    print "Enter first number: ";
    my $num1 = <STDIN>;
    chomp $num1;
    
    print "Enter second number: ";
    my $num2 = <STDIN>;
    chomp $num2;
    
    if ($choice == 1) {
        print "Result: ", $num1 + $num2, "\n";
    }
    elsif ($choice == 2) {
        print "Result: ", $num1 - $num2, "\n";
    }
    elsif ($choice == 3) {
        print "Result: ", $num1 * $num2, "\n";
    }
    elsif ($choice == 4) {
        if ($num2 == 0) {
            print "Error: Division by zero!\n";
        } else {
            print "Result: ", $num1 / $num2, "\n";
        }
    }
}
