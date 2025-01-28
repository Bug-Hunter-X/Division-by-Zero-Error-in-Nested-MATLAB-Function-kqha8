function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  if input == 5
    result = Inf; % Or handle it differently, e.g., warning and return NaN
    warning('Input resulted in division by zero. Returning Inf.');
  else
    result = someCalculation(input);
  end
end

function output = someCalculation(x)
  % This function might have an error, such as division by zero
  output = x / (x - 5);
end