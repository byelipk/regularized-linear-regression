function [error_test] = learningCurve(X, y, Xtest, ytest, lambda)

  m = size(X, 1);

  error_test = zeros(m, 1);

  for i = [1:m],
    [theta] = trainLinearReg([ones(i, 1) X(1:i, :)], y(1:i), 3);

    error_test(i) = linearRegCostFunction([ones(size(Xtest, 1), 1) Xtest], ytest, theta, 0);
  end;

end;
