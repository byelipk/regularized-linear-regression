function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the
%   cost of using theta as the parameter for linear regression to fit the
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Compute the unregularized cost
predictions = X * theta;
squared_errors = (predictions - y).^2;
unregularized_cost = (1 / (2 * m)) * sum(squared_errors);

% We do not regularize theta(1)
theta(1) = 0;

% Compute the regularization term. 
regularization_term = (lambda / (2 * m)) * sum(theta.^2);

J = unregularized_cost + regularization_term;


% Compute the gradient
grad = ((1/m) * ((predictions - y)' * X)) + ((lambda / m) * theta)';












% =========================================================================

grad = grad(:);

end
