function result = myFunctionImproved(input)
  % Check for invalid input and provide a more informative error message
  if input < 0
    error('myFunctionImproved:InvalidInput', 'Input must be non-negative.  Input value was: %f', input);
  end
  % ... more code ...
end

% Example usage
input = -1;
result = myFunctionImproved(input); % This will now throw a more specific error

%Improved exception handling in a separate function
function myOtherFunctionImproved()
  try
    x = 1/0;
  catch e
    % Log the error
    logErrorMessage(e);
    % Provide more information to the user, including suggesting possible solution.
    disp(['An error has occurred. Please check the log file for details. It might be caused by invalid data']); 
  end
end

function logErrorMessage(e)
   % create a log file to store the error messages
   logFileID = fopen('error.log', 'a'); 
   fprintf(logFileID, 'Error at %s: %s\n', datetime('now'), e.message); 
   fclose(logFileID); 
end
myOtherFunctionImproved();