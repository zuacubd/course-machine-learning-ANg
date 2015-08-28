function [jVal, gradient] = costFunction(X, y, theta)
% Cost function for computing cost and gradient in 
% advanced optimization approach.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

temp = X*theta-y;
J = (temp'*temp)/2;
J = J/m;
%code to compute J(theta)
%code to compute derivate of J(theta) with respect to theta


% =========================================================================

end
