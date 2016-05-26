function [outimg ] = Recursive_label(I,gray,outimg,x,y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
        [R1,C1]=size(gray);
        outimg(x,y)=I;
        if gray(x+1, y)== I && outimg(x+1,y) == 0 && x < R1-1
        outimg=Recursive_label(I,gray,outimg,x+1, y);
        end
        if gray(x-1, y)== I && outimg(x-1,y) == 0 && x > 2
        outimg=Recursive_label(I,gray,outimg,x-1, y);
        end
         if gray(x, y-1)== I && outimg(x,y-1) == 0 && y > 2
        outimg=Recursive_label(I,gray,outimg,x, y-1);
         end
        if gray(x, y+1)== I && outimg(x,y+1) == 0 && y < C1 -1
        outimg=Recursive_label(I,gray,outimg,x, y+1);
        end
        
    


end

