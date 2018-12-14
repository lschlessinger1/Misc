function [extremum, is_maximum] = parabolicInterp(x1, x2, x3, y1, y2, y3)
% parabolicInterp computes parabolic interpolation extremum given three 2D 
% points.
% is_maximum: 0 if extremum is minimum, 1 if extremum is maximum
%

    % check to see if the three points are collinear
    triangleArea = x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2);
    if triangleArea == 0
        error(['Cannot compute parabolic interpolation with three' ...
        ' collinear points']);
    end
    
    % compute extremum
    numerator = (x2^2 - x1^2) * (y2 - y3) - (x2^2 - x3^2) * (y2 - y1);
    denomominator = (x2 - x1) * (y2 - y3) - (x2 - x3) * (y2 - y1);
    extremum = (1/2) * (numerator / denomominator);
    
    % determine if extremum is minimum or maximum
    a = x1 * (y3 - y2) + x2 *(y1 - y3) + x3 * (y2 - y1) / (x1 - x2) * ...
        (x1 - x3) * (x2 - x3);
    if a > 0
        is_maximum = 0;
    else
        is_maximum = 1;
    end
end