function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
[num_feature,~] = size(theta);

z = X*theta;
h_theta = sigmoid(z);

J = (-1)*(1.0/m)* (y' * log(h_theta) + (1-y)' * log(1.0 - h_theta));
J = J + 0.5*lambda*(1.0/m)*sum(theta(2:num_feature).^2);

grad = (1/m)* ( X'* (h_theta - y)) + lambda*(1/m)*theta;
grad(1) = (1/m)* ( X(:,1)'* (h_theta - y));

% =============================================================

end
