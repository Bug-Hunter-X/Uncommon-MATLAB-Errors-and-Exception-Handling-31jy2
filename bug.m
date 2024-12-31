function result = myFunction(input)
% Some code that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  % ... more code ...
end

% Example usage
input = -1;
result = myFunction(input); % This will cause an error

% Another potential issue: Unhandled exceptions
function myOtherFunction()
  try
    % Some code that might throw an exception
    x = 1/0; % this will produce an error
  catch e
    disp(['Error caught: ', e.message]);
  end
end
myOtherFunction();