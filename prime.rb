# prime num is greater than 1, only facotrs are 1 and itself (i.e 2 * 1 = 2, nothing else)

# create a range of num from 2 to one less than the num in quest.
#loop through that range
    # ask if the num in question is cleanly divisible by each num in the range
    # if only 1 of those num creates a 0 remainder when the number in question is divided by that num the number in question is NOT prime
# if at end of loop, none of the range number created a 0 remained the num in question is prime


def prime?(number) 
    # is it a whole num? return false if decimal
    return false if !number.integer? # use integer? to determine if num is not deci. Use ! for not AKA num is not int.
    # is it less than 2 return false
    return false if number < 2
    # should return true if num is 2
    return true if number == 2
    # test if num can be divided evenly by any integer from 2 to 1 less than the num
        # should return false if yes
        (2..number-1).each {|int| return false if number % int == 0} # % gets remainder (ex. 4 % 2 retruns zero bc theres is nothing left)
    # if no num divides evenly from above return true
    true
end


        
