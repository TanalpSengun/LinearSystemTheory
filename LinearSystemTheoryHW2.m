

% Author: Tanalp Þengün
% Linear System Theory


clear vars
clc

%defi
N=100;

C= zeros(2*N,2*N);
EC= zeros(2*N,2*N);

p=0.6;
q=0.1;


rng('shuffle');
communityA=randi([ 0 2*N] );

% This is my C
for i=1:2*N
    for j=1:2*N
        if(i==j)
            C(i,j)=1;
        
        else
            C(i,j)=randi([0 1],1);
        end
            
        
    end
end



% This is my EC
for i=1:2*N
    for j=1:2*N
         if (i==j)
              EC(i,j)=1;
         else if ((i<communityA && j<communityA) || (i>communityA && j>communityA))
            EC(i,j)=p;
       
           
            else 
            EC(i,j)=q;
            end
        end
    end
end



figure();
imshow(C);
% I can see the communities from the picture as the black areas are
% communities. For example 1 and 2 and 1 and 3 are friendds then there will
% be blackness in this region.

[ A, B ] = eig(C);
[ C, D ] = eig (EC);

figure();
imshow(EC);
figure();
stem(A);
figure();
stem(C);

% I would like to use the cost to minimize after 100 trials. But there was
% an error occured and I could not finish.
%cost= A-C
