class Projects

    def imc
        p "############## - Welcome to IMC Calculator - ##############"
        p ""
        print "Hello, tell me your name to calculate your IMC: "
        nome = gets.chomp

        print "Type your weight: "
        peso = gets.chomp.to_i

        print "Type your height: "
        altura = gets.chomp.to_f

        altura2 = altura * altura
        imc = peso / altura2
        result = nil

        if imc.round(0).between?(19, 24)
                result = 'Ideal Weigth'
            elsif imc.round(0).between?(25, 29)
                result = 'Overweight'
            elsif imc.round(0).between?(30, 34)
                result = 'Grade 1 Obesity'
            elsif imc.round(0).between?(30, 39)
                result = 'Grade 2 Obesity'
            else
                result = 'Grade 3 Obesity'
        end
        p "############## - RESULT - ##############"
        p ""
        p "Hey! #{nome}, your current IMC is: #{imc.round(0)}, you are #{result}!"
        p ""
        p "############## - RESULT - ##############"
    end

    def age
        result = ''

        loop do
            p "############## - Guess Age - ###################"
            p result
            p ""
            p 'Select one of the following options'
            p '1- Find out a persons age'
            p '0- Leave'
            p ""
            p ""
            p "################################################"
            p ""
            print 'Type your option: '

            option = gets.chomp.to_i

            if option == 1
                print 'Enter the year of birth: '
                year_of_birth = gets.chomp.to_i
                print 'Enter the current year: '
                current_year = gets.chomp.to_i
                age = current_year - year_of_birth
                result = "Who was born in the year of #{year_of_birth}, clearly have #{age -1} or will have #{age} years old in #{current_year}!!"
            elsif option == 0
                break
            else
                result = 'Invalid option!'
            end
            #Comando que limpa o console
            system "clear"
        end
    end

    def calculator
        result = ''

        loop do
            if result != ''
                p "############## - RESULT - ##############"
                p ""
                p result
                p ""
                p "############## - RESULT - ##############"
                p ""
            end

            p '############## - Ruby 3000x Calculator - ##############'
            p '================= Select one of the following options ====================='
            p '1- Add'
            p '2- Subtract'
            p '3- Divide'
            p '4- Multiply'
            p '0- Leave'
            print '================= Type your option =====================: '
            option = gets.chomp.to_i

            if option == 1
                print 'Enter the first integer: '
                num1 = gets.chomp.to_i
                print 'Enter the second integer: '
                num2 = gets.chomp.to_i
                soma = num1 + num2
                result = "The result of the operation between #{num1} and #{num2}, is equals to #{soma} !"

                elsif option == 2
                    print 'Enter the first integer: '
                    num1 = gets.chomp.to_i
                    print 'Enter the second integer: '
                    num2 = gets.chomp.to_i
                    subtr = num1 - num2
                    result = "The result of the operation between #{num1} and #{num2}, is equals to #{subtr} !"

                elsif option == 3
                    print 'Enter the first integer: '
                    num1 = gets.chomp.to_i
                    print 'Enter the second integer: '
                    num2 = gets.chomp.to_i

                if num1 == 0
                    p 'Cannot divide by 0'
                        break
                    elsif num2 == 0
                        p 'Cannot divide by 0'
                        break
                end

                divid = num1 / num2
                result = "The result of the operation between #{num1} and #{num2}, is equals to #{divid} !"

                elsif option == 4
                print 'Enter the first integer: '
                num1 = gets.chomp.to_i
                print 'Enter the second integer: '
                num2 = gets.chomp.to_i
                mult = num1 * num2
                result = "The result of the operation between #{num1} and #{num2}, is equals to #{mult} !"

                elsif option == 0
                    break
                else
                result = 'Invalid Option'
            end
                #Comando que limpa o console
                system "clear"
        end

    end

    def akinator
        p "----------------------------------------------------------------------"
        p "############### Welcome to Numeric Akinator Guess 2057! ###############"
        p "----------------------------------------------------------------------"
        p "############### I Will Guess your number size! ###############"
        p "----------------------------------------------------------------------"
        p ""
        print "Give me your first number: "
        num = gets.chomp.to_i

        if num >= 0
            print "Now give me your second number: "
            num1 = gets.chomp.to_i
            p "Okay! Guess time!!"
            p ""

            result = num <=> num1

            if result == -1
                    p "Your first number is lesser than your second number!"
                elsif result == 0
                    p "Your first number is equals your second number!"
                else
                    p "Your first number is bigger than your second number!"
            end
        end
    end
end


project = Projects.new
loop do
    p "##########################################################"
    p '############## - Welcome to My Projects! - ###############'
    p "##########################################################"
        p '================= Select one of the following options ====================='
        p '1- IMC'
        p '2- Guess Age'
        p '3- Calculator'
        p '4- Numeric Akinator'
        p '0- Leave'
    print '================= Type your option =====================: '
    option = gets.chomp.to_i
        if option == 1
            system "clear"
            project.imc()
            elsif option == 2
                system "clear"
                project.age()
            elsif option == 3
                system "clear"
                project.calculator()
            elsif option == 4
                system "clear"
                project.akinator()
            elsif option == 0
                break
            else
            result = 'Opção inválida'
            p result
        end
end