import math
def sigmoid(x):
    return 1 / (1 + math.exp(-x))

def sigmoid_derivative(x):
    return x * (1 - x)

x1 = 1
x2 = 0
x3 = 1
target = 1
lr = 0.9

w1 = 0.3
w2 = 0.4
w3 = 0.1
w4 = 0.2
w5 = 0.2
w6 = 0.3
b1 = 0.4
b2 = 0.2
b3 = 0.1

h1_in = x1*w1 + x2*w2 + b1
h1 = sigmoid(h1_in)

h2_in = x2*w3 + x3*w4 + b2
h2 = sigmoid(h2_in)

o_in = h1*w5 + h2*w6 + b3
output = sigmoid(o_in)

print("Output after forward pass:", output)
error = target - output
delta_o = error * sigmoid_derivative(output)

# Update weights (hidden → output)
w5 += lr * delta_o * h1
w6 += lr * delta_o * h2

# Hidden layer deltas
delta_h1 = delta_o * w5 * sigmoid_derivative(h1)
delta_h2 = delta_o * w6 * sigmoid_derivative(h2)

# Update weights (input → hidden)
w1 += lr * delta_h1 * x1
w2 += lr * delta_h1 * x2
w3 += lr * delta_h2 * x2
w4 += lr * delta_h2 * x3

print("Updated Weights:")
print(w1, w2, w3, w4, w5, w6)