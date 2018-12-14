function extremum = parabolicInterp(x1, x2, x3, y1, y2, y3)
    % parabolicInterp computes the parabolic extremum given three 2D 
    % points.
    
    % check to see if the three points are collinear
    triangleArea = x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2);
    if triangleArea == 0
        error(['Cannot compute parabolic interpolation with three' ...
        ' collinear points']);
    end
    
    numerator = (x2^2 - x1^2) * (y2 - y3) - (x2^2 - x3^2) * (y2 - y1);
    denomominator = (x2 - x1) * (y2 - y3) - (x2 - x3) * (y2 - y1);
    extremum = (1/2) * (numerator / denomominator);
end