use std::io;

fn main() {
    println!("Simple Calculator");
    println!("Available operations: +, -, *, /");
    println!("Enter 'quit' to exit");

    loop {
        println!("Please enter your calculation (e.g., 2 + 2):");

        let mut input = String::new();
        io::stdin()
            .read_line(&mut input)
            .expect("Failed to read input");

        if input.trim().eq_ignore_ascii_case("quit") {
            println!("Goodbye!");
            break;
        }


        let parts: Vec<&str> = input.trim().split_whitespace().collect();
        if parts.len() != 3 {
            println!("Invalid input format. Please use: NUMBER OPERATOR NUMBER");
            continue;
        }


        let num1: f64 = match parts[0].parse() {
            Ok(n) => n,
            Err(_) => {
                println!("Invalid first number");
                continue;
            }
        };

        let num2: f64 = match parts[2].parse() {
            Ok(n) => n,
            Err(_) => {
                println!("Invalid second number");
                continue;
            }
        };

        let result = match parts[1] {
            "+" => num1 + num2,
            "-" => num1 - num2,
            "*" => num1 * num2,
            "/" => {
                if num2 == 0.0 {
                    println!("Error: Division by zero");
                    continue;
                }
                num1 / num2
            }
            _ => {
                println!("Invalid operator. Use +, -, *, or /");
                continue;
            }
        };

        println!("Result: {} {} {} = {}\n", num1, parts[1], num2, result);
    }
}