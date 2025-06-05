%{
% octave version 8.4.0
% 0001multiples_of_3_or_5.m
% Copyright 2025 @GitHub JoergEm
%
% This program is WITHOUT ANY WARRANTY; without even the implied
% warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%}


summe = 0;
for nummer = 1:999
    if mod(nummer, 3) == 0 || mod(nummer, 5) == 0
        summe = summe + nummer;
    end
end

fprintf('%d\n', summe);
