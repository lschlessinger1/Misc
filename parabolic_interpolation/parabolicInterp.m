function extremum = parabolicInterp(x1, x2, x3, y1, y2, y3)
    % parabolicInterp computes the parabolic extremum given three points.
    
    numerator = (x2^2 - x1^2) * (y2 - y3) - (x2^2 - x3^2) * (y2 - y1);
    denomominator = (x2 - x1) * (y2 - y3) - (x2 - x3) * (y2 - y1);
    extremum = (1/2) * (numerator / denomominator);
end