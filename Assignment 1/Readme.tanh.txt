1) When x is large e^x tends to infinity and then tanh becomes an infinite value eventually.

2) As the range of x[1e-10 to 1e10] is very large, we cannot use for loop.The program will take a long time to complete.
So we use while loop to avoid it and multiply it with 1.0002(just greater than 1) so that number of iterations of the loop stay 
within a good limit.
